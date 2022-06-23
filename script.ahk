; Alt + Q - Leave game and rejoin (7.5s delay on rejoin for loading screen)
; Shift + MiddleMouseButton - Repair and Salvage at Forge
; Alt + Click - Salvage item you clicked in your inventory at Forge
; Shift + C - Open inventory with Crafting materials scrolled down all the way so you can see your GR keys 

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

return ; End of auto-execute

#IfWinActive, Diablo III

#F2::Hotkey LButton, Toggle

~LButton::
	while GetKeyState("LButton", "P")
	{
		Click
		Sleep % wait
	}

return


#IfWinActive, Diablo III
#F3::Hotkey RButton, Toggle

~RButton::
	while GetKeyState("RButton", "P")
	{
		Click, Right
		Sleep % wait
	}
return

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

!A::
	MouseGetPos x, y
	MsgBox, Cursor is at %x% %y%
	return

^R::
	reload
	return

!Q::
	Send {Escape}
	Mousemove, 300, 500, 0.1
	Send {Click}
	Sleep,6000
	Send {Click}
	return

+MButton::
	MouseGetPos x, y
	Click, 500 650 	;Repair tab
	Click, 300 600 	;Repair button
	Click, 500 480 	;Salvage tab
	Click, 250 300 	;Common button
	Send {Enter}
	Send {Enter}
	Click, 310 300 	;Magic button
	Send {Enter}
	Send {Enter}
	Click, 390 300 	;Rare button
	Send {Enter}
	Send {Enter}
	Click, %x% %y% 0
	return
	
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
!B::
	Send {Escape}
	Send {Escape}
	Mousemove, 300, 500, 0.1
	Send {Click}
	Sleep,9000
	Send {Click}
	return

!LButton::
	MouseGetPos x, y
	Click, 500 480 
	Click, 190 300 
	Click, %x% %y%
	Send {Enter}
	Send {Enter}
	Sleep, 50
	Click
	Click, %x% %y% 0
	return
	
+C::
	Send {C}
	Click, 1450 880
	Click, 1350 820
	return
	



