;Hold q to exit. Set the sleep values if you wish.

Loop {

	SetKeyDelay(30)
	SendMode("Event")
	SetTitleMatchMode(2)
	CoordMode("Mouse", "Window")
	
	tt := "Last War-Survival Game ahk_class UnityWndClass"
	WinWait(tt)
	if (!WinActive(tt))
		WinActivate(tt)
	
	SleepLow := 200
	SleepHigh := 500
	Scrolls := 300
	
	AcceptRole(x1, x2, y1, y2) {
		MouseClick("L", x1, y1) ;window
		Sleep Random(SleepLow, SleepHigh)
		MouseClick("L", x2, y2) ;window
		Sleep Random(500, 1000)
			if (PixelGetColor(625, 865) = "0xE8D3D7") {
				Loop(Scrolls) {
					Send "{Blind}{WheelUp}"
				}
				Sleep (1000)
			}
		if (PixelGetColor(669, 224) = "0x59E540") {
			MouseClick("L", 674, 268) ;window
			Sleep Random(2000, 2400)
		}
		Send "{Blind}{Escape}"
		Sleep Random(SleepLow, SleepHigh)
		Send "{Blind}{Escape}"
		Sleep Random(SleepLow, SleepHigh)
	}
	
		DenyRole(x1, x2, y1, y2) {
		MouseClick("L", x1, y1) ;window
		Sleep Random(SleepLow, SleepHigh)
		MouseClick("L", x2, y2) ;window
		Sleep Random(500, 1000)
			if (PixelGetColor(625, 865) = "0xE8D3D7") {
				Loop(Scrolls) {
					Send "{Blind}{WheelUp}"
				}
				Sleep (1000)
			}
		if (PixelGetColor(745, 218) = "0xFD6262") {
			MouseClick("L", 755, 260) ;window
			Sleep Random(SleepLow, SleepHigh)
			MouseClick("L", 638, 735) ;window
			Sleep Random(2000, 2400)
		}
		Send "{Blind}{Escape}"
		Sleep Random(SleepLow, SleepHigh)
		Send "{Blind}{Escape}"
		Sleep Random(SleepLow, SleepHigh)
	}
	
	Sleep(2000)
	;Menu
	if (PixelGetColor(550, 345) = "0xFFEB16" or PixelGetColor(550, 429) = "0xFFEB16") {
		;VP
		x1 := 370
		x2 := 758
		y1 := 521
		y2 := 892
		DenyRole(x1, x2, y1, y2)
		
		;Strategy
		x1 := 545
		x2 := 758
		y1 := 521
		y2 := 892
		AcceptRole(x1, x2, y1, y2)
		
		;Security
		x1 := 719
		x2 := 756
		y1 := 521
		y2 := 901
		AcceptRole(x1, x2, y1, y2)
		
		;Development
		x1 := 373
		x2 := 761
		y1 := 746
		y2 := 895
		AcceptRole(x1, x2, y1, y2)
		
		;Science
		x1 := 539
		x2 := 759
		y1 := 744
		y2 := 903
		AcceptRole(x1, x2, y1, y2)
		
		;Interior
		x1 := 727
		x2 := 756
		y1 := 745
		y2 := 894
		AcceptRole(x1, x2, y1, y2)
		
		;Scroll assingmnets down
		Loop 10 {
			Send "{Blind}{WheelDown}"
		}
	}
	else {
		Send "{Blind}{Escape}"
		Sleep Random(SleepLow, SleepHigh)
		if (PixelGetColor(442, 545) = "0xFFDA26") {
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