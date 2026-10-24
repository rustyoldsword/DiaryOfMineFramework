scriptname sslBaseVoice extends sslBaseObject
Sound property Hot auto
Sound property Mild auto
Sound property Medium auto
Topic property LipSync auto hidden
string[] property RaceKeys auto hidden
int property Gender auto hidden
bool property Male hidden
bool function get()
	Return False
Endfunction
endProperty
bool property Female hidden
bool function get()
	Return False
Endfunction
endProperty
bool property Creature hidden
bool function get()
	Return False
Endfunction
endProperty
function MoveLips(Actor ActorRef, Sound SoundRef = none, float Strength = 1.0) global
Endfunction
function MoveLipsEx(Actor ActorRef, Sound SoundRef = none, float Strength = 1.0, int SoundCut = 0, float MoveTime = 0.2, int Phoneme = 1, int MinValue = 20, int MaxValue = 50, bool IsFixedValue = false, bool UseMFG = false) global
Endfunction
function PlayMoan(Actor ActorRef, int Strength = 30, bool IsVictim = false, bool UseLipSync = false)
Endfunction
function PlayMoanEx(Actor ActorRef, int Strength = 30, bool IsVictim = false, bool UseLipSync = false, int SoundCut = 0, float MoveTime = 0.2, int Phoneme = 1, int MinValue = 20, int MaxValue = 50, bool IsFixedValue = false, bool UseMFG = false)
Endfunction
function Moan(Actor ActorRef, int Strength = 30, bool IsVictim = false)
Endfunction
function MoanNoWait(Actor ActorRef, int Strength = 30, bool IsVictim = false, float Volume = 1.0)
Endfunction
Sound function GetSound(int Strength, bool IsVictim = false)
	Return None
Endfunction
function LipSync(Actor ActorRef, int Strength, bool ForceUse = false)
Endfunction
function TransitUp(Actor ActorRef, int from, int to) global
Endfunction
function TransitDown(Actor ActorRef, int from, int to) global
Endfunction
bool function CheckGender(int CheckGender)
	Return False
Endfunction
function SetRaceKeys(string RaceList)
Endfunction
function AddRaceKey(string RaceKey)
Endfunction
bool function HasRaceKey(string RaceKey)
	Return False
Endfunction
bool function HasRaceKeyMatch(string[] RaceList)
	Return False
Endfunction
function Save(int id = -1)
Endfunction
function Initialize()
Endfunction
