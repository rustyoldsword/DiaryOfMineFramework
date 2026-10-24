# Diary Of Mine Framework

Source code of Diary Of Mine Framework 0.9.0, a native (SKSE) core for **Diary of Mine 8.4.1** on Skyrim SE/AE
(built and tested on 1.6.1170). It moves the slow parts of Diary of Mine's enslavement into C++ and adds a slave panel,
while every native call falls back to Diary of Mine's own Papyrus code when the DLL is missing.

The released mod (DLL, compiled scripts, icons, font) is distributed separately; this repository holds the code that
builds it.

## What it does

- **Faster enslavement.** Personality generation (`DOM_Generator`), the ZaZ cuffs lookup, saving and restoring the
  captive's equipment and the cleanup of enemy factions run natively: an enslavement takes about 7-10 s instead of
  20 s or more. A built-in profiler (`[Debug] ProfileEnslavement=1`) samples the script VM and reports where the time
  goes.
- **Slave panel** (SKSE Menu Framework 3): talking to one of your slaves opens a panel beside the dialogue - the
  slave's state, quick commands and a book of orders. The game's dialogue window and cursor are hidden while it is
  open, the world keeps running. F4 folds it to the game's own dialogue, Esc or the close button end the dialogue.
- **Knocked-out menu**: E on an actor knocked out by Knockout Extensions opens one menu (Enslave, Tie up, Put in a sack,
  Hire, Search, Wake up, Finish off, Leave). Before Diary of Mine acts on a knocked-out actor, Knockout Extensions
  wakes it and Diary of Mine waits until it is on its feet.
- **Capture safety**: the player's movement is held and both actors' animations reset for the capture animation.
- **BaboDialogue coexistence** (`SceneGuard`, `BaboBridge`): a scene-busy global BaboDialogue's events check, and its
  ambient chatter is quiet during a capture.
- Smaller fixes: notifications when an enslavement starts and ends, no personality-file prompt, untie removes gag,
  cuffs and blindfold, a slave with nothing to wear does not repeat the dress-up idle.

Every setting is documented in [`data/SKSE/Plugins/DiaryOfMineFramework.ini`](data/SKSE/Plugins/DiaryOfMineFramework.ini).

## What is here

| Folder | Contents |
|---|---|
| `src/` | the SKSE plugin `DiaryOfMineFramework.dll` (CommonLibSSE-NG, xmake) |
| `papyrus/src/` | `DiaryOfMineFramework.psc` (the native declarations) and the four Diary of Mine scripts the framework rebuilds from the 8.4.1 source with its calls added: `DOM_Keys`, `DOM_Generator`, `DOM_Equip`, `DOM_ZAZ` |
| `papyrus/stubs/` | compile-only stand-ins for scripts of mods Diary of Mine references (Paradise Halls, SexLab, Devious Devices, ...) |
| `papyrus/tools/` | `pexpatch.py` / `pexpatch_dressup.py`: splice the framework calls into compiled `DOM_Core.pex` and `DOM_Actor.pex`, whose published source no longer matches the shipped scripts |
| `data/` | the default `DiaryOfMineFramework.ini` |

### Plugin overview

- `Generator` - `DOM_Generator` natively: traits, virgin status, training, origin, enemy-faction cleanup, ZaZ cuffs,
  equipment save/restore.
- `CaptureWatch` - follows every enslavement on the script VM (notifications, timing, the optional profiler).
- `Panel`, `Actions`, `Slave` - the slave panel and the knocked-out menu; buttons run Diary of Mine's own menu
  functions with the wheel choices queued, so every Diary of Mine check still applies.
- `Forms`, `DomSettings`, `Bag`, `LoreGuard`, `SceneGuard`, `BaboBridge` - forms, Diary of Mine settings, the sack,
  dialogue guards, BaboDialogue coexistence.

## Building

### Plugin

Requires [xmake](https://xmake.io) 3.x and Visual Studio 2022, plus two libraries placed in `lib/` (not included):

- [CommonLibSSE-NG](https://github.com/alandtse/CommonLibVR/tree/ng) (alandtse's `ng` branch, 4.39.2) at
  `lib/CommonLibSSE-NG`
- [SKSE-Menu-Framework-3-API](https://github.com/QTR-Modding/SKSE-Menu-Framework-3-API) at
  `lib/SKSE-Menu-Framework-3-API`

```
xmake f -m releasedbg --skyrim_vr=n
xmake
```

### Papyrus

`papyrus/build.ps1` compiles `papyrus/src` into `papyrus/out` with the game's Papyrus Compiler. It needs the SKSE script
sources in the game's `Data\Scripts\Source`, Diary of Mine's script sources and the sources of SkyUI, UIExtensions,
PapyrusUtil SE, JContainers SE, SlaveTats, RaceMenu and powerofthree's Papyrus Extender:

```
.\papyrus\build.ps1 -Game <Skyrim folder> -DiaryOfMine <Diary of Mine Scripts\Source> -Imports "<dir>;<dir>;..."
```

`DOM_Core.pex` and `DOM_Actor.pex` are made from the compiled scripts of the Diary of Mine patches with
`python papyrus/tools/pexpatch.py <in.pex> <out.pex>` (and `pexpatch_dressup.py`).

## Credits

- **Diary of Mine** - its author: the mod this framework extends; the scripts in `papyrus/src` (except
  `DiaryOfMineFramework.psc`) are Diary of Mine's, changed to call the framework.
- **Knockout Extensions SKSE** - its author: the knockout the knocked-out menu works with.
- **CommonLibSSE-NG** and its contributors, the **SKSE** team, **SKSE Menu Framework** (QTR-Modding),
  **nlohmann/json**.

## License

The framework's own code (`src/`, `papyrus/src/DiaryOfMineFramework.psc`, `papyrus/tools/`, `papyrus/build.ps1`) is
MIT - see [LICENSE](LICENSE). The Diary of Mine scripts in `papyrus/src` and the stubs belong to their authors.
