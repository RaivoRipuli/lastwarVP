;Hold q to exit. Set sleep values if you wish.
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
SleepHigh :=  500

Sleep(2000)

;MouseClick("L", 1285, 914) ;screen

MouseClick("L", 553, 726) ;window

;MouseClick("L", -132, 2,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1487, 1097) ;screen

MouseClick("L", 755, 909) ;window

;MouseClick("L", 202, 183,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1407, 458) ;screen

MouseClick("L", 675, 270) ;window

;MouseClick("L", -80, -639,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1521, 327) ;screen

MouseClick("L", 789, 139) ;window

;MouseClick("L", 114, -131,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1520, 319) ;screen

MouseClick("L", 788, 131) ;window

;MouseClick("L", -1, -8,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1448, 954) ;screen

MouseClick("L", 716, 766) ;window

;MouseClick("L", -72, 635,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1485, 1096) ;screen

MouseClick("L", 753, 908) ;window

;MouseClick("L", 37, 142,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1406, 446) ;screen

MouseClick("L", 674, 258) ;window

;MouseClick("L", -79, -650,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1519, 323) ;screen

MouseClick("L", 787, 135) ;window

;MouseClick("L", 113, -123,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1519, 322) ;screen

MouseClick("L", 787, 134) ;window

;MouseClick("L", 0, -1,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1113, 1085) ;screen

MouseClick("L", 381, 897) ;window

;MouseClick("L", -406, 763,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1488, 1085) ;screen

MouseClick("L", 756, 897) ;window

;MouseClick("L", 375, 0,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1406, 443) ;screen

MouseClick("L", 674, 255) ;window

;MouseClick("L", -82, -642,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1513, 328) ;screen

MouseClick("L", 781, 140) ;window

;MouseClick("L", 107, -115,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1513, 327) ;screen

MouseClick("L", 781, 139) ;window

;MouseClick("L", 0, -1,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1283, 1086) ;screen

MouseClick("L", 551, 898) ;window

;MouseClick("L", -230, 759,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1524, 1091) ;screen

MouseClick("L", 792, 903) ;window

;MouseClick("L", 241, 5,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1403, 451) ;screen

MouseClick("L", 671, 263) ;window

;MouseClick("L", -121, -640,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1508, 326) ;screen

MouseClick("L", 776, 138) ;window

;MouseClick("L", 105, -125,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1516, 326) ;screen

MouseClick("L", 784, 138) ;window

;MouseClick("L", 8, 0,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1414, 1084) ;screen

MouseClick("L", 682, 896) ;window

;MouseClick("L", -102, 758,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1476, 1085) ;screen

MouseClick("L", 744, 897) ;window

;MouseClick("L", 62, 1,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1411, 456) ;screen

MouseClick("L", 679, 268) ;window

;MouseClick("L", -65, -629,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1513, 336) ;screen

MouseClick("L", 781, 148) ;window

;MouseClick("L", 102, -120,,,, "R") ;relative

Sleep Random(SleepLow, SleepHigh)

;MouseClick("L", 1520, 324) ;screen

MouseClick("L", 788, 136) ;window

;MouseClick("L", 7, -12,,,, "R") ;relative

}
ExitApp()

q::ExitApp()
