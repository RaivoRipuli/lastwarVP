#Requires AutoHotkey v2
#include .\Lib\OCR.ahk
;Hold q to exit. Set the variables if you wish.

filePath := ".\list.txt"
fileContent := FileRead(filePath)
lines := StrSplit(fileContent, "`n", "`r")
Deny := true

SleepLow := 200
SleepHigh := 500
Scrolls := 300
Matched := false

Loop {

	SetKeyDelay(30)
	SendMode("Event")
	SetTitleMatchMode(2)
	CoordMode("Mouse", "Window")
	
	tt := "Last War-Survival Game ahk_class UnityWndClass"
	WinWait(tt)
	if (!WinActive(tt))
		WinActivate(tt)
	
	NavigateRole(x1, y1) {
		MouseClick("L", x1, y1) ;window
		Sleep Random(SleepLow, SleepHigh)
		MouseClick("L", 756, 895) ;window
		Sleep Random(500, 1000)
			if (PixelGetColor(625, 865) = "0xE8D3D7") {
				Loop(Scrolls) {
					Send "{Blind}{WheelUp}"
				}
				Sleep (1000)
			}
	}
	
	AcceptRole() {
		if (PixelGetColor(669, 224) = "0x59E540") {
			MouseClick("L", 674, 268) ;window
			Sleep Random(2000, 2400)
		}
		Send "{Blind}{Escape}"
		Sleep Random(SleepLow, SleepHigh)
		Send "{Blind}{Escape}"
		Sleep Random(SleepLow, SleepHigh)
	}
	
	DenyRole() {
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

	SearchString(lines) {
		global Matched := false
		for index, line in lines {
			result := OCR.FromWindow("Last War-Survival Game", {scale:2, X:390, Y:205, W:250, H:30})
			try found := result.FindString(line)
			catch {
				continue
			}
			global Matched := true
		}
	}

	HandleRole(Deny) {
		if (Matched) {
			Deny ? DenyRole() : AcceptRole()
		}
		else {
			AcceptRole()
		}
	}
	
	Sleep(2000)
	;Menu
	if (PixelGetColor(550, 345) = "0xFFEB16" or PixelGetColor(550, 429) = "0xFFEB16") {
		;VP
		;x1 := 370
		;y1 := 520
		;NavigateRole(x1, y1)
		;DenyRole
		
		;Strategy
		x1 := 545
		y1 := 521
		NavigateRole(x1, y1)
		SearchString(lines)
		HandleRole(Deny)
		
		;Security
		x1 := 719
		y1 := 523
		NavigateRole(x1, y1)
		SearchString(lines)
		HandleRole(Deny)
		
		;Development
		x1 := 373
		y1 := 746
		NavigateRole(x1, y1)
		SearchString(lines)
		HandleRole(Deny)
		
		;Science
		x1 := 539
		y1 := 744
		NavigateRole(x1, y1)
		SearchString(lines)
		HandleRole(Deny)
		
		;Interior
		x1 := 727
		y1 := 745
		NavigateRole(x1, y1)
		SearchString(lines)
		HandleRole(Deny)
		
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
