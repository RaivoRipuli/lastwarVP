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
SleepScrollLow := 50
SleepScrollHigh := 60
Scrolls := 300

Sleep(2000)

;Menu
if (PixelGetColor(550, 345) = "0xFFEB16") {
;Strategy
MouseClick("L", 545, 511) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 758, 892) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(Scrolls) {
	Send "{Blind}{WheelUp}"
		}
	Sleep (500)
	}
if (PixelGetColor(669, 224) = "0x59E540") {
	MouseClick("L", 674, 268) ;window
	Sleep Random(SleepLow, SleepHigh)
	Sleep Random(2000,2400)
}
Send "{Blind}{Escape}{Escape}"
Sleep Random(SleepLow, SleepHigh)

;Security
MouseClick("L", 719, 511) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 756, 901) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(Scrolls) {
	Send "{Blind}{WheelUp}"
		}
	Sleep (500)
	}
if (PixelGetColor(669, 224) = "0x59E540") {
	MouseClick("L", 676, 269) ;window
	Sleep Random(SleepLow, SleepHigh)
	Sleep Random(2000,2400)
}
Send "{Blind}{Escape}{Escape}"
Sleep Random(SleepLow, SleepHigh)

;Development
MouseClick("L", 373, 723) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 761, 895) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(Scrolls) {
	Send "{Blind}{WheelUp}"
		}
	Sleep (500)
	}
if (PixelGetColor(669, 224) = "0x59E540") {
	MouseClick("L", 680, 261) ;window
	Sleep Random(SleepLow, SleepHigh)
	Sleep Random(2000,2400)
}
Send "{Blind}{Escape}{Escape}"
Sleep Random(SleepLow, SleepHigh)

;Science
MouseClick("L", 539, 734) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 759, 903) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(Scrolls) {
	Send "{Blind}{WheelUp}"
		}
	Sleep (500)
	}
if (PixelGetColor(669, 224) = "0x59E540") {
	MouseClick("L", 674, 251) ;window
	Sleep Random(SleepLow, SleepHigh)
	Sleep Random(2000,2400)
}
Send "{Blind}{Escape}{Escape}"
Sleep Random(SleepLow, SleepHigh)

;Interior
MouseClick("L", 727, 726) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 756, 894) ;window
Sleep Random(SleepLow, SleepHigh)
	if (PixelGetColor(625, 865) = "0xE8D3D7") {
	Loop(Scrolls) {
	Send "{Blind}{WheelUp}"
		}
	Sleep (500)
	}
if (PixelGetColor(669, 224) = "0x59E540") {
	MouseClick("L", 671, 269) ;window
	Sleep Random(SleepLow, SleepHigh)
	Sleep Random(2000,2400)
}
Send "{Blind}{Escape}{Escape}"
Sleep Random(SleepLow, SleepHigh)
;Scroll assingmnets down
Loop 10 {
	Send "{Blind}{WheelDown}"
}
}
else {
Send "{Blind}{Escape}"
Sleep Random(SleepLow, SleepHigh)
if (PixelGetColor(444, 516) = "0xFFDA26") {
	Send "{Blind}{Escape}"
	Sleep Random(SleepLow, SleepHigh)
}
MouseClick("L", 47, 70) ;window
Sleep Random(SleepLow, SleepHigh)
MouseClick("L", 796, 542) ;window
Sleep Random(SleepLow, SleepHigh)
Loop 10 {
	Send "{Blind}{WheelDown}"
}
}
}
ExitApp()

q::ExitApp()