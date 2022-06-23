;Diablo III aid scripts for FullHD (1920 x 1080) resolution (Windows PC only)
;Click, 900 380 0 ;OK Button position
;Click, 500 650 0  ;Repair tab
;Click, 300 600 0  ;Repair button
;Click, 500 480 0  ;Salvage tab
;Click, 250 300 0  ;Common button
;Click, 310 300 0  ;Magic button
;Click, 390 300 0  ;Rare button
	
msgbox Alt+Q - leave game and rejoin (6s delay) `nShift+MiddleMouseButton - Repair and Salvage `nAlt+Click - Salvage item `nShift+C - Inventory to GR Keys `nAlt+M - Map to Act III `nStart+F2/F3/F4 - toggle autoclicks and skills 2, 3, 4 while holding

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallMouseHook
#MaxThreadsPerHotkey 2
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



#IfWinActive, Diablo III
cps := 20
wait := 1000 // cps
return

;Win+F2 to toggle Left click while holding Left mouse button
#IfWinActive, Diablo III
#F2::Hotkey LButton, Toggle

~LButton::
	while GetKeyState("LButton", "P")
	{
		Click
		Sleep % wait
	}

return

;Win+F3 toggle to Right click while holding Right mouse button
#IfWinActive, Diablo III
#F3::Hotkey RButton, Toggle

~RButton::
	while GetKeyState("RButton", "P")
	{
		Click, Right
		Sleep % wait
	}
return

;Win+F4 toggle to Mouse4 (the back command on browsers) while holding Mouse4 button
#IfWinActive, Diablo III
#F4::Hotkey XButton1, Toggle

~XButton1::
	while GetKeyState("XButton1", "P")
	{
		Send, {XButton1}
		Send, {Numpad2}
		Send, {Numpad3}
		Send, {Numpad4}
		Sleep % wait
	}
return

#IfWinActive, Diablo III

;Alt+A - Only for showing cursor position
!A::
	MouseGetPos x, y
	MsgBox, Cursor is at %x% %y%
	return
;Ctrl+R - Reload script
^R::
	reload
	return
;Alt+Q - Reload game (Game Menu->Leave Game->Wait 6 sec->Start Game) 
!Q::
	Send {Space}
	Click, 1265 1028
	Click, 300 500
	Sleep, 6000
	Click, 300 500
	return

;Alt+MiddleMouseButton - Repair and salvage common, magic and rare items when Blacksmith window open
+MButton::
	MouseGetPos x, y
	Click, 500 650 	
	Click, 300 600 	
	Click, 500 480 	
	Click, 250 300 	
	Click, 900 380  
	Click, 310 300 	
	Click, 900 380
	Click, 390 300 	
	Click, 900 380
	Click, %x% %y% 0
	return
;Alt+M - Open map to Bridge of Korsikk	
!M::
	Send {TAB}
	Sleep, 150
	Click, 960 540 Right
	Sleep, 150
	Click, 960 540 Right
	Sleep, 150
	Click, 708 397 
	Sleep, 150
	Click, 801 460 0
	return
;Alt+LeftClick - Salvage items with confirmation clicked
!LButton::
	MouseGetPos x, y
	Click, 500 480 
	Click, 190 300
	Sleep, 50 
	Click, %x% %y%
	Sleep, 50
	Click, 900 380
	Sleep, 50
	Click, %x% %y% Right
	return
;Alt+C - Open Inventory with Crafting Materials scrolled to GR Keys	
!C::
	Send {Space}
	Sleep, 50
	Send {C}
	Click, 1450 880
	Click, 1350 820
	return