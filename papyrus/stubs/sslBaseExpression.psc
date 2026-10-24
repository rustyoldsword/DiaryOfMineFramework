scriptname sslBaseExpression extends sslBaseObject
int property Male       = 0 autoreadonly
int property Female     = 1 autoreadonly
int property MaleFemale = -1 autoreadonly
int property Phoneme  = 0 autoreadonly
int property Modifier = 16 autoreadonly
int property Mood     = 30 autoreadonly
int property PhonemeIDs  = 15 autoreadonly
int property ModifierIDs = 13 autoreadonly
int property MoodIDs     = 16 autoreadonly
string property File hidden
string function get()
	Return ""
Endfunction
endProperty
int[] Phases
int[] property PhaseCounts hidden
int[] function get()
	Return None
Endfunction
endProperty
int property PhasesMale hidden
int function get()
	Return 0
Endfunction
endProperty
int property PhasesFemale hidden
int function get()
	Return 0
Endfunction
endProperty
Form[] MaleEquip
Form[] FemaleEquip
float[] Male1
float[] Male2
float[] Male3
float[] Male4
float[] Male5
float[] Female1
float[] Female2
float[] Female3
float[] Female4
float[] Female5
function Apply(Actor ActorRef, int Strength, int Gender)
Endfunction
function ApplyPhase(Actor ActorRef, int Phase, int Gender)
Endfunction
int function PickPhase(int Strength, int Gender)
	Return 0
Endfunction
float[] function SelectPhase(int Strength, int Gender)
	Return None
Endfunction
float function GetModifier(Actor ActorRef, int id) global native
float function GetPhoneme(Actor ActorRef, int id) global native
float function GetExpression(Actor ActorRef, bool getId) global native
function ClearPhoneme(Actor ActorRef) global
Endfunction
function ClearModifier(Actor ActorRef) global
Endfunction
function OpenMouth(Actor ActorRef) global
Endfunction
function CloseMouth(Actor ActorRef) global
Endfunction
bool function IsMouthOpen(Actor ActorRef) global
	Return False
Endfunction
function ClearMFG(Actor ActorRef) global
Endfunction
function TransitPresetFloats(Actor ActorRef, float[] FromPreset, float[] ToPreset, float Speed = 1.0, float Time = 1.0) global
Endfunction
function ApplyPresetFloats(Actor ActorRef, float[] Preset) global
Endfunction
float[] function GetCurrentMFG(Actor ActorRef) global
	Return None
Endfunction
function SetIndex(int Phase, int Gender, int Mode, int id, int value)
Endfunction
function SetPreset(int Phase, int Gender, int Mode, int id, int value)
Endfunction
function SetMood(int Phase, int Gender, int id, int value)
Endfunction
function SetModifier(int Phase, int Gender, int id, int value)
Endfunction
function SetPhoneme(int Phase, int Gender, int id, int value)
Endfunction
function EmptyPhase(int Phase, int Gender)
Endfunction
function AddPhase(int Phase, int Gender)
Endfunction
bool function HasPhase(int Phase, Actor ActorRef)
	Return False
Endfunction
float[] function GenderPhase(int Phase, int Gender)
	Return None
Endfunction
function SetPhase(int Phase, int Gender, float[] Preset)
Endfunction
float[] function GetPhonemes(int Phase, int Gender)
	Return None
Endfunction
float[] function GetModifiers(int Phase, int Gender)
	Return None
Endfunction
int function GetMoodType(int Phase, int Gender)
	Return 0
Endfunction
int function GetMoodAmount(int Phase, int Gender)
	Return 0
Endfunction
int function GetIndex(int Phase, int Gender, int Mode, int id)
	Return 0
Endfunction
int function ValidatePreset(float[] Preset)
	Return 0
Endfunction
int[] function ToIntArray(float[] FloatArray) global
	Return None
Endfunction
float[] function ToFloatArray(int[] IntArray) global
	Return None
Endfunction
function CountPhases()
Endfunction
function Save(int id = -1)
Endfunction
function Initialize()
Endfunction
bool function ExportJson()
	Return False
Endfunction
bool function ImportJson()
	Return False
Endfunction
function ApplyTo(Actor ActorRef, int Strength = 50, bool IsFemale = true, bool OpenMouth = false)
Endfunction
int[] function GetPhase(int Phase, int Gender)
	Return None
Endfunction
int[] function PickPreset(int Strength, bool IsFemale)
	Return None
Endfunction
int function CalcPhase(int Strength, bool IsFemale)
	Return 0
Endfunction
function ApplyPreset(Actor ActorRef, int[] Preset) global
Endfunction
