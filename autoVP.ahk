;Hold q to exit. Set the sleep values if you wish.
Loop
{

StartingValue := 0
i := RegRead("HKEY_CURRENT_USER\SOFTWARE\" A_ScriptName, "i", StartingValue)
RegWrite(i + 1, "REG_DWORD", "HKEY_CURRENT_USER\SOFTWARE\" A_ScriptName, "i")

SetKeyDelay(30)
SendMode("Event")
SetTitleMatchMode(2)
;CoordMode("Mouse", "Screen")
CoordMode("Mouse", "Window")

tt := "Last War-Survival Game ahk_class UnityWndClass"
WinWait(tt)
if (!WinActive(tt))
  WinActivate(tt)

SleepLow := 200
SleepHigh := 500
SleepScrollLow := 45
SleepScrollHigh := 55


Sleep(2000)

;Strategy
MouseClick("L", 553, 726) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 755, 909) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(11) {
	MouseClickDrag "L", 512, 248, 517, 872
	Sleep Random(SleepScrollLow, SleepScrollHigh)
		}
	}
MouseClick("L", 675, 270) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 789, 139) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 788, 131) ;window
Sleep Random(SleepLow, SleepHigh)

;Security
MouseClick("L", 716, 766) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 753, 908) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(11) {
	MouseClickDrag "L", 512, 248, 517, 872
	Sleep Random(SleepScrollLow, SleepScrollHigh)
		}
	}
MouseClick("L", 674, 258) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 787, 135) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 787, 134) ;window
Sleep Random(SleepLow, SleepHigh)

;Development
MouseClick("L", 381, 897) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 756, 897) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(11) {
	MouseClickDrag "L", 512, 248, 517, 872
	Sleep Random(SleepScrollLow, SleepScrollHigh)
		}
	}
MouseClick("L", 674, 255) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 781, 140) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 781, 139) ;window
Sleep Random(SleepLow, SleepHigh)

;Science
MouseClick("L", 551, 898) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 792, 903) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(11) {
	MouseClickDrag "L", 512, 248, 517, 872
	Sleep Random(SleepScrollLow, SleepScrollHigh)
		}
	}
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 671, 263) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 776, 138) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 784, 138) ;window

;Interior
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 682, 896) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 744, 897) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(11) {
	MouseClickDrag "L", 512, 248, 517, 872
	Sleep Random(SleepScrollLow, SleepScrollHigh)
		}
	}
MouseClick("L", 679, 268) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 781, 148) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 788, 136) ;window
}
ExitApp()

q::ExitApp()
