scriptname sslThreadController extends sslThreadModel
import PapyrusUtil
float SkillTime
float BaseDelay
float SFXDelay
float SFXTimer
bool TimedStage
float StageTimer
int StageCount
sslActorAlias AdjustAlias
bool Adjusted
bool hkReady
bool Prepared
function SetAnimation(int aid = -1)
Endfunction
ObjectReference function GetCenterFX()
	Return None
Endfunction
float function GetTimer()
	Return 0.0
Endfunction
function ResolveTimers()
Endfunction
float function GetAnimationRunTime()
	Return 0.0
Endfunction
function UpdateTimer(float AddSeconds = 0.0)
Endfunction
function EndLeadIn()
Endfunction
function EndAnimation(bool Quickly = false)
Endfunction
function RecordSkills()
Endfunction
function SetBonuses()
Endfunction
function EnableHotkeys(bool forced = false)
Endfunction
function DisableHotkeys()
Endfunction
function Initialize()
Endfunction
int function GetAdjustPos()
	Return 0
Endfunction
function PlayStageAnimations()
Endfunction
function AdvanceStage(bool backwards = false)
Endfunction
function ChangeAnimation(bool backwards = false)
Endfunction
function ChangePositions(bool backwards = false)
Endfunction
function AdjustForward(bool backwards = false, bool AdjustStage = false)
Endfunction
function AdjustSideways(bool backwards = false, bool AdjustStage = false)
Endfunction
function AdjustUpward(bool backwards = false, bool AdjustStage = false)
Endfunction
function RotateScene(bool backwards = false)
Endfunction
function AdjustSchlong(bool backwards = false)
Endfunction
function AdjustChange(bool backwards = false)
Endfunction
function RestoreOffsets()
Endfunction
function MoveScene()
Endfunction
function RealignActors()
Endfunction
function MoveActors()
Endfunction
function GoToStage(int ToStage)
Endfunction
function ResetPositions()
Endfunction
function TriggerOrgasm()
Endfunction
int[] Hotkeys
int property kAdvanceAnimation = 0  autoreadonly hidden
int property kChangeAnimation  = 1  autoreadonly hidden
int property kChangePositions  = 2  autoreadonly hidden
int property kAdjustChange     = 3  autoreadonly hidden
int property kAdjustForward    = 4  autoreadonly hidden
int property kAdjustSideways   = 5  autoreadonly hidden
int property kAdjustUpward     = 6  autoreadonly hidden
int property kRealignActors    = 7  autoreadonly hidden
int property kRestoreOffsets   = 8  autoreadonly hidden
int property kMoveScene        = 9  autoreadonly hidden
int property kRotateScene      = 10 autoreadonly hidden
int property kEndAnimation     = 11 autoreadonly hidden
int property kAdjustSchlong    = 12 autoreadonly hidden
Sound[] HotkeyDown
Sound[] HotkeyUp
function PlayHotkeyFX(int i, bool backwards)
Endfunction
event OnKeyDown(int keyCode)
Endevent
