;Script By Zakujiro
; Script นี้ผมทำขึ้น เพื่อแจกให้ใช้กันฟรีๆ นะครับ ห้ามนำไปแจกจำหน่ายเด็ดขาด
;ถ้าเกิดว่ามีปัญหา ผมจะเอาออกทันทีและ จะไม่พัฒนาต่ออีก

#include<Misc.au3>



HotKeySet("{ESC}", "stop")

Func stop()
     ToolTip('หยุดการทำงาน', 0, 0)
	 ConsoleWrite('Stop AI' & @CRLF)
    Sleep(500)
    Exit
EndFunc


Global $GameHD

Func _PSsixLoadH($gtitle)
$GameHD = WinGetHandle($gtitle)
If @error Then
MsgBox(4096, "Error", "ไม่พบหน้าต่างเกม")
Else
Return 1
EndIf
EndFunc

If _PSsixLoadH("Nox App Player") Then WinActivate($GameHD) ;



ConsoleWrite('Start AI' & @CRLF)
Opt("MouseCoordMode", 2)
Opt("PixelCoordMode", 2)
Opt("CaretCoordMode", 2)

;Skip Valuable
$TopLeftPauseButtonX = 494
$TopLeftPauseButtonY = 89
$TopLeftPauseButtonColor =  0x03A9FF
$SkipButtonX = 73
$SkipButtonY = 113

;Chat Valuable
$ChatDialogBorderTopRightX = 504
$ChatDialogBorderTopRightY = 79
$ChatDialogBorderTopRightColor = 0xF4F4F6

;Auto Valuable
$AutoButtonX = 75
$AutoButtonY = 970
$AutoButtonColor = 0x003D63

;Next Valuable
$NextButtonX = 276
$NextButtonY= 831
$NextButtonColor = 0x0057C3
$Next2ButtonX = 278
$Next2ButtonY= 835
$Next2ButtonColor = 0x00388A

;Sword Icon Valuable
$SwordButtonX = 22
$SwordButtonY= 743
$SwordButtonColor = 0x988366


;Sword Icon Valuable
$SwordButton2X = 23
$SwordButton2Y= 643
$SwordButton2Color = 0x998062

;Tip Button Valuable
$CloseTipButtonX = 525
$CloseTipButtonY = 241
$CloseTipButtonColor = 0xFFFFFF

;Depart Valuable
$DepartButtonX = 280
$DepartButtonY = 851
$DepartButtonColor =  0x0062AD

;SelectMission Valuable
$NewMissionX = 413
$NewMissionY = 339
$NewMissionColor = 0xFFFF7F

$NewMission2X = 490
$NewMission2Y = 482
$NewMission2Color = 0x7D7D78

;UseSkill Valuable
$PlayerViewX = 257
$PlayerViewY = 663
$PlayerViewColor = 0x179CA0

;CustomerSupport Valuable
$BackButtonX = 228
$BackButtonY = 246
$BackButtonColor = 0xD2D3D3

;Latius Woods
$LatiusWoodsX = 273
$LatiusWoodsY = 535
$LatiusWoodsColor = 0x51A55B

;BookIcon
$BookIconX = 519
$BookIconY = 225
$BookIconColor = 0xFFFFFF

ConsoleWrite('Start While Loop' & @CRLF)
While 1

	;New Game
	if PixelGetColor(117,895,$GameHD) = 0x4C617D Then
		ConsoleWrite('Start Game' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,117,895)
		Sleep(500)
		ControlClick ($GameHD, "", "","left",1,279,953)
	EndIf


	;Click Screen For past Chat
	ControlClick ($GameHD, "", "","left",1,10,71)
	Sleep(500)
	;Check Skip
	if PixelGetColor($TopLeftPauseButtonX,$TopLeftPauseButtonY,$GameHD) = $TopLeftPauseButtonColor Then
		ConsoleWrite('Pause Detected' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$TopLeftPauseButtonX,$TopLeftPauseButtonY)
		Sleep(1000)
		ControlClick ($GameHD, "", "","left",1,$SkipButtonX,$SkipButtonY)
	EndIf

	;Check Chat Dialog
	if PixelGetColor($ChatDialogBorderTopRightX,$ChatDialogBorderTopRightY,$GameHD) = $ChatDialogBorderTopRightColor Then
		ConsoleWrite('Chat Click' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$ChatDialogBorderTopRightX,$ChatDialogBorderTopRightY)
	EndIf

	;Auto Button
	if PixelGetColor($AutoButtonX,$AutoButtonY,$GameHD) = $AutoButtonColor Then
		ConsoleWrite('AutoButton Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$AutoButtonX,$AutoButtonY)
	EndIf

	;Next Button
	if PixelGetColor($NextButtonX,$NextButtonY,$GameHD) = $NextButtonColor Then
		ConsoleWrite('Next Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$NextButtonX,$NextButtonY)
	EndIf

	;Next Button
	if PixelGetColor($Next2ButtonX,$Next2ButtonY,$GameHD) = $Next2ButtonColor Then
		ConsoleWrite('Next Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$Next2ButtonX,$Next2ButtonY)
	EndIf

	;Attack Button
	if PixelGetColor($SwordButtonX,$SwordButtonY,$GameHD) = $SwordButtonColor Then
		ConsoleWrite('Attack Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,140,781)
	EndIf

	;Attack Button
	if PixelGetColor($SwordButton2X,$SwordButton2Y,$GameHD) = $SwordButton2Color Then
		ConsoleWrite('Attack Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,143,683)
	EndIf

	;Close Tip
	if PixelGetColor($CloseTipButtonX,$CloseTipButtonY,$GameHD) = $CloseTipButtonColor Then
		ConsoleWrite('Close Tip Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$CloseTipButtonX,$CloseTipButtonY)
	EndIf

	;Depart Button
	if PixelGetColor($DepartButtonX,$DepartButtonY,$GameHD) = $DepartButtonColor Then
		ConsoleWrite('Depart Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$DepartButtonX,$DepartButtonY)
	EndIf

	;SelectMission
	if PixelGetColor($NewMissionX,$NewMissionY,$GameHD) = $NewMissionColor Then
		if PixelGetColor($NewMission2X,$NewMission2Y,$GameHD) = $NewMission2Color Then
			ConsoleWrite('Select Mission Press' & @CRLF)
			ControlClick ($GameHD, "", "","left",1,$NewMissionX,$NewMissionY)
		Else
			ControlClick ($GameHD, "", "","left",1,55,209)
			Sleep(1000)
			ControlClick ($GameHD, "", "","left",1,55,209)
		EndIf


	EndIf

	;Use Skill
	if PixelGetColor($PlayerViewX,$PlayerViewY,$GameHD) = $PlayerViewColor Then
		ConsoleWrite('Depart Press' & @CRLF)
		MouseClickDrag("", 257, 663, 322, 690)
		Sleep(2000)
		ControlClick ($GameHD, "", "","left",1,322, 690)
		Sleep(1000)
		ControlClick ($GameHD, "", "","left",1,257, 663)
	EndIf

	;Customer Support Back
	if PixelGetColor($BackButtonX,$BackButtonY,$GameHD) = $BackButtonColor Then
		ConsoleWrite('Back Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,55,235)
	EndIf


	;Latius Woods
	if PixelGetColor($LatiusWoodsX,$LatiusWoodsY,$GameHD) = $LatiusWoodsColor Then
		ConsoleWrite('Latius Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,$LatiusWoodsX,$LatiusWoodsY)
	EndIf

	;Infomation Back
	if PixelGetColor($BookIconX,$BookIconY,$GameHD) = $BookIconColor Then
		ConsoleWrite('Back Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,55,214)
	EndIf

	;Go to recieve Mail
	if PixelGetColor(430,211,$GameHD) = 0xB57C75 Then
		ConsoleWrite('Mail Press' & @CRLF)
		ControlClick ($GameHD, "", "","left",1,430,211)
		Sleep(4000)
		ControlClick ($GameHD, "", "","left",1,405,250)
		Sleep(3000)
		ControlClick ($GameHD, "", "","left",1,413,965)
	EndIf


	;Check Coupon
	$coord = PixelSearch(421, 696, 435, 710,0xFF0000,0,1,$GameHD )
		If @error Then
			ConsoleWrite('Coupon Enough' & @CRLF)
			ControlClick ($GameHD, "", "","left",1,416,685)
			Sleep(800)
			ControlClick ($GameHD, "", "","left",1,278,610)
		Else
			ConsoleWrite('Coupon Empty' & @CRLF)
			ControlClick ($GameHD, "", "","left",1,137,678)
			Sleep(1000)
			ControlClick ($GameHD, "", "","left",1,285,603)
		EndIf


WEnd



