ScriptName DOM_MessageWidget Extends SKI_WidgetBase
String _messageText = ""
String _next1MessageText = ""
String _next2MessageText = ""
String _next3MessageText = ""
String _next4MessageText = ""
String _font = "$EverywhereMediumFont"
String _align = "left"
Int _textSize = 16
bool _visible = False
Int _textColor = 0xFFFFFF
Int _widgetWidth = 300
Function DisplayMessage(String mess)
EndFunction
Function ClearMessage()
EndFunction
bool Property IsLargeWidget = False AutoReadOnly
String Property DebugText
String Function get()
	Return ""
EndFunction
EndProperty
Function DisplayPlayerMessage(String mess)
EndFunction
Function Test(String text = "")
EndFunction
Float Property SecondsToDisplay = 7.0 Auto
bool Property IsEnabled         = False Auto
bool _isReadyForUpdate = True
bool Property IsReadyForUpdate
bool Function get()
	Return False
EndFunction
EndProperty
Float Property FadeOutDuration = 1.0 Auto
Float Property FadeInDuration = 0.1 Auto
Int Property WidgetIndex = -1 Auto
String Property WidgetSection Auto
String Property WidgetSection2 Auto Hidden
bool message_stacked = false
bool message_stays   = false
Event OnUpdate()
EndEvent
Function Update()
EndFunction
String Property MessageText
String Function get()
	Return ""
EndFunction
Function set(String a_val)
EndFunction
EndProperty
Int Property TextColor
Int Function Get()
	Return 0
EndFunction
Function Set(Int newValue)
EndFunction
EndProperty
bool Property Visible
bool Function get()
	Return False
EndFunction
Function set(bool a_val)
EndFunction
EndProperty
String Property Font
String Function get()
	Return ""
EndFunction
Function set(String a_val)
EndFunction
EndProperty
String Property Align
String Function get()
	Return ""
EndFunction
Function set(String a_val)
EndFunction
EndProperty
Int Property TextSize
Int Function get()
	Return 0
EndFunction
Function set(Int a_val)
EndFunction
EndProperty
Int Property WidgetWidth
Int Function get()
	Return 0
EndFunction
Function set(Int a_val)
EndFunction
EndProperty
Event OnWidgetReset()
EndEvent
Event OnWidgetInit()
EndEvent
Event OnWidgetLoad()
EndEvent
Float[] Function GetDimensions()
	Return None
EndFunction
String Function GetWidgetSource()
	Return ""
EndFunction
String Function GetWidgetType()
	Return ""
EndFunction
Function MoveTo(Int newX, Int newY)
EndFunction
Function UpdateWidgetText(String a_val)
EndFunction
Function UpdateWidgetFont(String a_val)
EndFunction
Function UpdateWidgetTextSize(Int a_val)
EndFunction
Function UpdateWidgetTextColor(Int a_val)
EndFunction
Function UpdateWidgetTextAlignment(String a_val)
EndFunction
Function UpdateWidgetVisible(bool a_val)
EndFunction
Function UpdateWidgetWidth(Int a_val)
EndFunction
Function Log(String mess)
EndFunction
