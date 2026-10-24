"""Insert instructions into one function of a compiled .pex, leaving every other byte as it was.

The Patches DOM_Core.pex cannot go through PapyrusAssembler (its disassembly of this 350 KB script is cut inside the
variable table) nor be rebuilt from source (the shipped 8.4.1 source is older than the pex). This edits the binary:
new strings are appended to the string table (existing indices unchanged), the instructions are spliced in, and the
function's instruction count, its debug line table and the object's size field are updated.

python pexpatch_dressup.py <in.pex> <out.pex>   (the patch below: DOM_Actor.Anim_DressUp)

DOM_Actor.Anim_DressUp plays the "putting clothes on" idles whenever DoM's flags say there are clothes to wear; the flags
are set by the equip pass that runs after the order, so a slave stripped and kept naked with nothing in her inventory
played it again and again. After its LogAnim line the function now returns unless
DiaryOfMineFramework.HasClothesToWear(akRef). Without the DLL the native is unbound and answers false, so the idle is
skipped then too; the clothes themselves are equipped by DoM's equip pass, not by this animation.
"""
import struct
import sys

# ---- what to insert -----------------------------------------------------------------------------------------------
OBJECT, STATE, FUNCTION = 'DOM_Actor', '', 'Anim_DressUp'
# insert after the first instruction "CallMethod LogAnim self ..." (before the canMove check)
ANCHOR_CALL = 'LogAnim'
TEMP = '::temp1566'  # the function's own Bool local
NEW_LOCALS = [('::domfw_actor', 'Actor')]


def instructions(s):
    # Cast ::domfw_actor ::akRef_var
    # CallStatic DiaryOfMineFramework HasClothesToWear ::temp1566 ::domfw_actor ; JumpT ::temp1566 +2 ; Return None
    ident = lambda name: b'\x01' + struct.pack('>H', s(name))
    integer = lambda v: b'\x03' + struct.pack('>i', v)
    return [
        b'\x0e' + ident('::domfw_actor') + ident('::akRef_var'),
        b'\x19' + ident('DiaryOfMineFramework') + ident('HasClothesToWear') + ident(TEMP) + integer(1) + ident('::domfw_actor'),
        b'\x15' + ident(TEMP) + integer(2),
        b'\x1a' + b'\x00',
    ]


# ---- pex reader with offsets ----------------------------------------------------------------------------------------
NARGS = {0: 0, 1: 3, 2: 3, 3: 3, 4: 3, 5: 3, 6: 3, 7: 3, 8: 3, 9: 3, 0xA: 2, 0xB: 2, 0xC: 2, 0xD: 2, 0xE: 2, 0xF: 3, 0x10: 3,
         0x11: 3, 0x12: 3, 0x13: 3, 0x14: 1, 0x15: 2, 0x16: 2, 0x17: 3, 0x18: 2, 0x19: 3, 0x1A: 1, 0x1B: 3, 0x1C: 3, 0x1D: 3,
         0x1E: 2, 0x1F: 2, 0x20: 3, 0x21: 3, 0x22: 4, 0x23: 4}


class R:
    def __init__(self, b):
        self.b, self.p = b, 0

    def u8(self):
        v = self.b[self.p]; self.p += 1; return v

    def u16(self):
        v = struct.unpack_from('>H', self.b, self.p)[0]; self.p += 2; return v

    def u32(self):
        v = struct.unpack_from('>I', self.b, self.p)[0]; self.p += 4; return v

    def skip(self, n):
        self.p += n

    def ws(self):
        n = self.u16(); v = self.b[self.p:self.p + n].decode('latin-1'); self.p += n; return v

    def val(self):
        t = self.u8()
        if t == 0:
            return (0, None)
        if t in (1, 2):
            return (t, self.u16())
        if t == 3:
            v = struct.unpack_from('>i', self.b, self.p)[0]; self.p += 4; return (3, v)
        if t == 4:
            self.p += 4; return (4, None)
        if t == 5:
            self.u8(); return (5, None)
        raise ValueError(t)


def main(src, dst):
    b = bytearray(open(src, 'rb').read())
    r = R(b)
    assert r.u32() == 0xFA57C0DE
    r.u8(); r.u8(); r.u16(); r.p += 8; r.ws(); r.ws(); r.ws()
    count_at = r.p
    strings = [r.ws() for _ in range(r.u16())]
    strings_end = r.p
    lower = {x.lower(): i for i, x in enumerate(strings)}
    added = []

    def s(name):
        if name.lower() in lower:
            return lower[name.lower()]
        lower[name.lower()] = len(strings) + len(added)
        added.append(name)
        return lower[name.lower()]

    # debug info: find the function's line table
    debug_entry = None
    if r.u8():
        r.p += 8
        for _ in range(r.u16()):
            o, st, fn = r.u16(), r.u16(), r.u16()
            r.u8()
            n_at = r.p
            n = r.u16()
            if strings[o] == OBJECT and strings[st] == STATE and strings[fn] == FUNCTION:
                debug_entry = (n_at, n)
            r.p += 2 * n
    assert debug_entry, 'debug entry'
    for _ in range(r.u16()):
        r.u16(); r.u8()

    def skip_func():
        r.u16(); r.u16(); r.u32(); r.u8()
        r.skip(4 * r.u16())
        r.skip(4 * r.u16())
        for _ in range(r.u16()):
            op = r.u8()
            for _ in range(NARGS[op]):
                r.val()
            if op in (0x17, 0x18, 0x19):
                n = r.val()[1]
                for _ in range(n):
                    r.val()

    target = None
    for _ in range(r.u16()):
        name = strings[r.u16()]
        size_at = r.p
        r.u32()
        r.u16(); r.u16(); r.u32(); r.u16()
        for _ in range(r.u16()):
            r.u16(); r.u16(); r.u32(); r.val()
        for _ in range(r.u16()):
            r.u16(); r.u16(); r.u16(); r.u32(); fl = r.u8()
            if fl & 4:
                r.u16()
            else:
                if fl & 1:
                    skip_func()
                if fl & 2:
                    skip_func()
        for _ in range(r.u16()):
            state = strings[r.u16()]
            for _ in range(r.u16()):
                fname = strings[r.u16()]
                if name == OBJECT and state == STATE and fname == FUNCTION:
                    r.u16(); r.u16(); r.u32(); r.u8()
                    r.skip(4 * r.u16())
                    nl_at = r.p
                    nl = r.u16()
                    locals_ = [strings[struct.unpack_from('>H', b, r.p + 4 * i)[0]] for i in range(nl)]
                    r.p += 4 * nl
                    locals_end = r.p
                    assert TEMP in locals_, 'temp local'
                    icount_at = r.p
                    icount = r.u16()
                    index, insert_at = 0, None
                    while index < icount:
                        start = r.p
                        op = r.u8()
                        args = [r.val() for _ in range(NARGS[op])]
                        if op in (0x17, 0x18, 0x19):
                            n = r.val()[1]
                            args += [r.val() for _ in range(n)]
                        if insert_at is None and op == 0x17 and strings[args[0][1]] == ANCHOR_CALL:
                            insert_at = (r.p, index + 1)  # after the anchor
                        index += 1
                    assert insert_at, 'anchor'
                    target = (size_at, icount_at, icount, insert_at, nl_at, nl, locals_end)
                else:
                    skip_func()
    assert target, 'function'
    size_at, icount_at, icount, (insert_pos, insert_index), nl_at, nl, locals_end = target
    code = instructions(s)
    blob = b''.join(code)

    local_bytes = b''.join(struct.pack('>HH', s(n), s(t)) for n, t in NEW_LOCALS)
    # splice from the back so earlier offsets stay valid
    b[insert_pos:insert_pos] = blob
    struct.pack_into('>H', b, icount_at, icount + len(code))
    b[locals_end:locals_end] = local_bytes
    struct.pack_into('>H', b, nl_at, nl + len(NEW_LOCALS))
    old_size = struct.unpack_from('>I', b, size_at)[0]
    struct.pack_into('>I', b, size_at, old_size + len(blob) + len(local_bytes))
    n_at, n = debug_entry
    lines = list(struct.unpack_from('>' + 'H' * n, b, n_at + 2))
    line = lines[insert_index] if insert_index < n else (lines[-1] if lines else 0)
    lines[insert_index:insert_index] = [line] * len(code)
    b[n_at:n_at + 2 + 2 * n] = struct.pack('>H', n + len(code)) + struct.pack('>' + 'H' * len(lines), *lines)
    new_strings = b''.join(struct.pack('>H', len(x)) + x.encode('latin-1') for x in added)
    b[strings_end:strings_end] = new_strings
    struct.pack_into('>H', b, count_at, len(strings) + len(added))
    open(dst, 'wb').write(b)
    print(f'{FUNCTION}: +{len(code)} instructions at #{insert_index}, strings added {added}')


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
