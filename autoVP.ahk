;Press q to play. Hold to record. Long hold to edit
;#####SETTINGS#####
;What is the preferred method of recording mouse coordinates (screen,window,relative)
;MouseMode=window
;Record sleep between input actions (true,false)
;RecordSleep=true
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

Sleep(453)

;MouseClick("L", 1775, 572) ;screen

MouseClick("L", 943, 384) ;window

;MouseClick("L", 500, 100,,,, "R") ;relative

Sleep(867)

;MouseClick("L", 791, 266) ;screen

MouseClick("L", 59, 78) ;window

;MouseClick("L", -984, -306,,,, "R") ;relative

Sleep(828)

;MouseClick("L", 1417, 912) ;screen

MouseClick("L", 685, 724) ;window

;MouseClick("L", 626, 646,,,, "R") ;relative

Sleep(789)

;MouseClick("L", 1285, 914) ;screen

MouseClick("L", 553, 726) ;window

;MouseClick("L", -132, 2,,,, "R") ;relative

Sleep(718)

;MouseClick("L", 1487, 1097) ;screen

MouseClick("L", 755, 909) ;window

;MouseClick("L", 202, 183,,,, "R") ;relative

Sleep(797)

;MouseClick("L", 1407, 458) ;screen

MouseClick("L", 675, 270) ;window

;MouseClick("L", -80, -639,,,, "R") ;relative

Sleep(1203)

;MouseClick("L", 1521, 327) ;screen

MouseClick("L", 789, 139) ;window

;MouseClick("L", 114, -131,,,, "R") ;relative

Sleep(843)

;MouseClick("L", 1520, 319) ;screen

MouseClick("L", 788, 131) ;window

;MouseClick("L", -1, -8,,,, "R") ;relative

Sleep(484)

;MouseClick("L", 1448, 954) ;screen

MouseClick("L", 716, 766) ;window

;MouseClick("L", -72, 635,,,, "R") ;relative

Sleep(547)

;MouseClick("L", 1485, 1096) ;screen

MouseClick("L", 753, 908) ;window

;MouseClick("L", 37, 142,,,, "R") ;relative

Sleep(820)

;MouseClick("L", 1406, 446) ;screen

MouseClick("L", 674, 258) ;window

;MouseClick("L", -79, -650,,,, "R") ;relative

Sleep(429)

;MouseClick("L", 1519, 323) ;screen

MouseClick("L", 787, 135) ;window

;MouseClick("L", 113, -123,,,, "R") ;relative

Sleep(546)

;MouseClick("L", 1519, 322) ;screen

MouseClick("L", 787, 134) ;window

;MouseClick("L", 0, -1,,,, "R") ;relative

Sleep(633)

;MouseClick("L", 1113, 1085) ;screen

MouseClick("L", 381, 897) ;window

;MouseClick("L", -406, 763,,,, "R") ;relative

Sleep(953)

;MouseClick("L", 1488, 1085) ;screen

MouseClick("L", 756, 897) ;window

;MouseClick("L", 375, 0,,,, "R") ;relative

Sleep(500)

;MouseClick("L", 1406, 443) ;screen

MouseClick("L", 674, 255) ;window

;MouseClick("L", -82, -642,,,, "R") ;relative

Sleep(531)

;MouseClick("L", 1513, 328) ;screen

MouseClick("L", 781, 140) ;window

;MouseClick("L", 107, -115,,,, "R") ;relative

Sleep(343)

;MouseClick("L", 1513, 327) ;screen

MouseClick("L", 781, 139) ;window

;MouseClick("L", 0, -1,,,, "R") ;relative

Sleep(726)

;MouseClick("L", 1283, 1086) ;screen

MouseClick("L", 551, 898) ;window

;MouseClick("L", -230, 759,,,, "R") ;relative

Sleep(703)

;MouseClick("L", 1524, 1091) ;screen

MouseClick("L", 792, 903) ;window

;MouseClick("L", 241, 5,,,, "R") ;relative

Sleep(578)

;MouseClick("L", 1403, 451) ;screen

MouseClick("L", 671, 263) ;window

;MouseClick("L", -121, -640,,,, "R") ;relative

Sleep(328)

;MouseClick("L", 1508, 326) ;screen

MouseClick("L", 776, 138) ;window

;MouseClick("L", 105, -125,,,, "R") ;relative

Sleep(297)

;MouseClick("L", 1516, 326) ;screen

MouseClick("L", 784, 138) ;window

;MouseClick("L", 8, 0,,,, "R") ;relative

Sleep(726)

;MouseClick("L", 1414, 1084) ;screen

MouseClick("L", 682, 896) ;window

;MouseClick("L", -102, 758,,,, "R") ;relative

Sleep(695)

;MouseClick("L", 1476, 1085) ;screen

MouseClick("L", 744, 897) ;window

;MouseClick("L", 62, 1,,,, "R") ;relative

Sleep(453)

;MouseClick("L", 1411, 456) ;screen

MouseClick("L", 679, 268) ;window

;MouseClick("L", -65, -629,,,, "R") ;relative

Sleep(437)

;MouseClick("L", 1513, 336) ;screen

MouseClick("L", 781, 148) ;window

;MouseClick("L", 102, -120,,,, "R") ;relative

Sleep(359)

;MouseClick("L", 1520, 324) ;screen

MouseClick("L", 788, 136) ;window

;MouseClick("L", 7, -12,,,, "R") ;relative

Sleep(352)

MouseClick("L", 59, 78) ;window

}
ExitApp()

q::ExitApp()
