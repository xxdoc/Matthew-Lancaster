﻿;  =============================================================
;# __ C:\SCRIPTER\SCRIPTER CODE -- AUTOKEY\Autokey -- 01-F10 __ HOTKEY __ PRINT SCREEN.ahk
;# __ 
;# __ Autokey -- 01-F10 __ HOTKEY __ PRINT SCREEN.ahk
;# __ 
;# __ BY Matthew Lancaster 
;# __ Matt.Lan@Btinternet.com
;# __ 
;  =============================================================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;

; -------------------------------------------------------------------
;WANT SELECT ALL LINE AND PASTE ONTO IT
;WANT COPY ON IT OWN
;WANT HOLD CTRL UNTIL ASK IT STOP FOR LINK URL IN WEB PAGE
; -------------------------------------------------------------------
;WANT COPY TEXT AND REPEAT PASTE IT DOWN A LINE HOME DOWN PASTE PUT REMARK IN
; -------------------------------------------------------------------

;# ------------------------------------------------------------------
; Location OnLine
;--------------------------------------------------------------------
; ----
; Matthew-Lancaster/Autokey -- 01-F10 __ HOTKEY __ PRINT SCREEN.ahk
; https://github.com/Matthew-Lancaster/Matthew-Lancaster/blob/master/SCRIPTER%20CODE%20--%20AUTOKEY/Autokey%20--%2001-F10%20__%20HOTKEY%20__%20PRINT%20SCREEN.ahk
; ----
;# ------------------------------------------------------------------


;
;--------------------
#SingleInstance force
;--------------------
;--------------------

; -------------------------------------------------------------------
; CODE INITIALIZE
; -------------------------------------------------------------------
SoundBeep , 1500 , 400
SetStoreCapslockMode, off

SETTIMER TIMER_PREVIOUS_INSTANCE,1
SETTIMER TIMER_ENTER,OFF
DetectHiddenWindows, oFF
SetTitleMatchMode 3  ; Specify Full path

GLOBAL VAR_COUNTER

GLOBAL FILE_SCRIPT_COUNT
GLOBAL FILE_SCRIPT
GLOBAL XPOS
GLOBAL YPOS

GLOBAL O_ID

O_ID=0

GLOBAL OutputVar_4

GLOBAL O_OutputVar_store
O_OutputVar_store=

GLOBAL PART_RENAME_VAR

GLOBAL STATE_XYPOSCOUNTER

GLOBAL OLD_STATE_XYPOSCOUNTER
STATE_XYPOSCOUNTER=0
OLD_STATE_XYPOSCOUNTER=0

GOSUB F5_ROUTINE


SETTIMER TOP_LEFT_MOUSE_CLOSE_MPC,50

SetTitleMatchMode 2  ; Avoids the need to specify the full path of the file below.



; -------------------------------------------------------------------
; REPLACE F10 TO DO CONTROL PRINT SCREEN
; FOR CLIPBOARD SCREEN SHOT -- 
; CODE PICPICK WON'T HOT KEY F10 ON WIN 7 AND UP
; PIKPICK SETTER -- CAPTURE FULL SCREEN IS NONE AND CARRY ON LIKE NORMAL CTRL PRNT SCRN
; PIKPICK SETTER -- CAPTURE WINDOW FORM-ER AREA IS SHIFT F10 WITH THIS CODE 
; LINE ABOVE THE NORM IS PRESS F10 THIS CODE TRANSLATE TO SHIFTER F10
; SHIFT IS +
; +F10 IS ACTIVE WINDOW 
; CTRL PRINTSCR IS WHOLE SCREEN OF PIKPICKER
; ALL REST SET TO NONE HOT KEY
; ^ CTRL IS BETTER THAN SHIFT DRAW A DIALOG BOX UP SOME INSTACE PDF ACROBAT
; set pikpick to ctrl f10 area and ctrl prt scrn for normAl same as before
; Sendinput +{PrintScreen} -- NOT USER
; ^ CTRL F10 PRT SCRN
; -------------------------------------------------------------------
;F10::^F10

F10::
	SoundBeep , 1500 , 400
	;SetCapsLockState , Off
	;SetNumLockState , Off
	;SetScrollLockState , Off

	Sendinput ^{F10}
	; LOGITECH MOUSE INFO POP UP WONT LIKE CAPS CHANGE OR HOT KEY F10 THINK INFO REQUIRE ABOUT CAPITAL CHANGE OR TURN LOGITECH NOTIFY OFF
Return
; -------------------------------------------------------------------
; -------------------------------------------------------------------



TIMER_ENTER:
	DetectHiddenWindows, oFF
	SetTitleMatchMode 3  ; Specify Full path.
	IfWinExist, Clone Job ahk_class #32770
	{
		ControlClick, OK, Clone Job ahk_class #32770
		SoundBeep , 2500 , 100
	}
RETURN


; *C:\SCRIPTER\SCRIPTER CODE -- AUTOKEY\Autokey -- 41-Minimize Chrome Close & Close RButton.ahk - Notepad++ [Administrator]

; WINGET Autokey -- 41-Minimize Chrome Close & Close RButton.ahk

; -------------------------------------------------------------------
; ADD THE TERMINATOR VERSION NUMBER AND THEN WE ARE ABLE TO USE EXACT 
; STRING MATCHING IN CASE NOTEPAD HAD IT
; YOU HEARD IT HEAR FIRST
; -------------------------------------------------------------------

F12::
{
	SetTitleMatchMode 3  ; EXACTLY
	DetectHiddenWindows, ON
	AHK_TERMINATOR_VERSION:=" - AutoHotkey v"A_AhkVersion
	AHK_TERMINATOR_VERSION:=StrReplace(AHK_TERMINATOR_VERSION, """" , "")
	FILE:="C:\SCRIPTER\SCRIPTER CODE -- AUTOKEY\Autokey -- 41-Minimize Chrome Close & Close RButton.ahk"
	WinGet, UniquePID, PID, %FILE%%AHK_TERMINATOR_VERSION%
	
	IF UniquePID>0
	{
		SOUNDBEEP 1000,100
		; WinKill, Ahk_PID %UniquePID% 
		Process, Close, %UniquePID% 
	}
	FILE:="Autokey -- 41-Minimize Chrome Close & Close RButton.ahk"
	WinGet, UniquePID, PID, %FILE%
	
	IF UniquePID>0
	{
		SOUNDBEEP 1000,100
		; WinKill, Ahk_PID %UniquePID% 
		Process, Close, %UniquePID% 
	}
}
RETURN

; F12::Process,Close,WScript.exe
; C:\Windows\SysWOW64\WScript.exe


; -------------------------------------------------------------------
; THE FACEBOOK ONE IS HERE NOW
; C:\SCRIPTER\SCRIPTER CODE -- AUTOKEY\Autokey -- 40-Auto Add Photo Name Messenger Facebook.ahk
; FACE LIKE A BOOK
; -------------------------------------------------------------------
; -------------------------------------------------------------------
; HERE FOR FACEBOOK 
; GOT SOME PHOTO IN FOLDER
; THIS WILL GET FILENAME WITH ANY DESCRIPTION
; AND PUT IT IN FACEBOOK 
; SO YOU DON'T HAVE TO TYPE ANY IN ADD YOUR DESCRIPTION ON COMPUTER 
; FIRST AND DON'T HAVE TO MAKE EXTRA COPY
; WISH SPACE BOOK GRIN BOOK _ AI _ WOULD DO SOMETHING LIKE THAT
; THOUGH GUESS THEY ARE SECRETLY KEEPING ALL YOUR FILENAME INFO WITH EACH PHOTO SO IT DON'T GET LOST OR SOMETHING
; -------------------------------------------------------------------
; REM IN AND OUT WHEN WANT TO USE IT 
; SUPPLY PATH NAME _ UP A BIT
; MIGHT MAKE IT OWN AHK FILE THIS ONE AS USED A LOT AND ONLY WANT 
; CALL UP WHEN USER
; MY FAV HOTKEY IS F4 F5 AND OTHER BUT HARDLY USE MANY OR I GET IT TOO COMPLICATED
; GUESSING WHERE MY FAVOURITE HOTKEY ARE
; USE THEM WHEN YOU WANT
; WRITTEN WELL BEFORE THIS DATE
; JUST USE AGAIN TODAY
; -------------------------------------------------------------------
; [ Tuesday 21:31:30 Pm_09 October 2018 ]
; -------------------------------------------------------------------


; CPC
; XXXF4::
; F4::
{
	TITLE_ADD=
	SEXY=0
	; ----
	; Activate a chrome tab by its name - Ask for Help - AutoHotkey Community
	; https://autohotkey.com/board/topic/110607-activate-a-chrome-tab-by-its-name/
	; ----
	
	WinActivate, ahk_class Chrome_WidgetWin_1
	WinWaitActive, ahk_class Chrome_WidgetWin_1
	WinGetTitle, CurrentWindowTitle, ahk_class Chrome_WidgetWin_1

	SET_GO=FALSE
	If CurrentWindowTitle contains 404 Page Not Found
		SET_GO=TRUE
	If CurrentWindowTitle contains Raspberry Pi - Google Chrome
		SET_GO=TRUE
		
	IF SET_GO=FALSE
		RETURN
				
	Loop
	{
		Send, ^{Tab}
		Sleep, 200
		WinActivate, ahk_class Chrome_WidgetWin_1
		IfWinNotExist, ahk_class Chrome_WidgetWin_1
			Return
		WinGetTitle, CurrentWindowTitle, ahk_class Chrome_WidgetWin_1
		SET_GO=FALSE
		If CurrentWindowTitle contains 404 Page Not Found
			SET_GO=TRUE
		If CurrentWindowTitle contains CPC - Google Chrome
			SET_GO=TRUE
		If CurrentWindowTitle contains New Tab - Google Chrome
			SET_GO=TRUE
			
		; CPC UK | Electronic Parts & Components, Raspberry Pi - Google Chrome
		If CurrentWindowTitle contains Raspberry Pi - Google Chrome
			SET_GO=TRUE
			
		IF SET_GO=TRUE
		{
			Sleep, 200
			SendInput ^w
			SEXY=0
		}
		
		If TITLE_ADD not contains %CurrentWindowTitle%
			SEXY=0

		SEXY+=1

		IF SEXY>30
		{
			SOUNDBEEP 3000,100
			SOUNDBEEP 2000,100
			BREAK
		}
			
		TITLE_ADD=%TITLE_ADD%%CurrentWindowTitle%
	}
}
Return


^/::
{
	SOUNDBEEP 1000,50
	SENDINPUT, {F5}
}
RETURN



; C:\SCRIPTER\NOTEPAD TALK\TEXT 2018-11-25 __ D DRIVE FOLDER NAME.txt

F5_ROUTINE:

	; SET TO 0 FOR 1ST BEGINNER
	; HELP KEEP IN SYNC ADJUST AS GO
	VAR_COUNTER=0
	; -------------------------------------------------------------------
	; -------------------------------------------------------------------

	; GLOBAL FILE_SCRIPT
	; GLOBAL FILE_SCRIPT_COUNT

	FILE_SCRIPT_COUNT=0
	FILE_SCRIPT := Object()
	FOLDER_EXCLUDE := Object()

	; FILE_SCRIPT := []

	; -------------------------------------------------------------------
	; SET THE PATH OF PHOTO FOLDER _ WITHOUT RECURSING SUB-FOLDER IS GOOD IDEA
	; TO BE ABLE QUICKLY COUNT THEM VERIFY AND SEE AS ORDER TO GO ONTO FACEBOOK
	; AND NOT STRETCH MY CODE TOO MUCH ABOUT WANT RECURSING SUB-FOLDER 
	; SINGLE FOLDER ONLY AT THE MOMENT
	; -------------------------------------------------------------------
	
	; Example #3: Retrieve file names sorted by name (see next example to sort by date):
	FileList =  ; Initialize to be blank.
	Loop, Files, D:\*.*, D
		FileList = %FileList%%A_LoopFileName%`n
	Sort, FileList ;  R  ; The R option sorts in reverse order. See Sort for other options.

	Loop, parse, FileList, `n
	{
		if A_LoopField =  ; Ignore the blank item at the end of the list.
			continue
		FILE_SCRIPT[A_Index] := A_LoopField
		FILE_SCRIPT_COUNT := A_Index
		; MSGBOX % FILE_SCRIPT[A_Index]
		
	}	

	Loop % FILE_SCRIPT.MaxIndex()
	{
		FILE_NAME:=FILE_SCRIPT[A_Index]
		StringUpper, FILE_NAME,FILE_NAME
		FILE_SCRIPT[A_Index]:=FILE_NAME
	}

	
	ACUM=0
	ACUM+=1
	FOLDER_EXCLUDE[ACUM] := "$RECYCLE.BIN"
	ACUM+=1
	FOLDER_EXCLUDE[ACUM] := "_gsdata_"
	ACUM+=1
	FOLDER_EXCLUDE[ACUM] := "System Volume Information"
	ACUM+=1
	FOLDER_EXCLUDE[ACUM] := "$GetCurrent"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "AWS"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "Documents and Settings"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "Program Files (x86)"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "ProgramData"
    ; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "RECOVERY"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "SADPLOG"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "windows"
	
	
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "# MY DOCS"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "#0 1 INSTALLATIONS"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "0 00 ART"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "0 00 ART LOGGERS"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "0 00 ART LOGGERS - WEBCAM"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "0 00 HTTrack"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "0 00 MUSIC ---"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "0 00 MOBILE-1"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "0 00 MOBILE-2"
	; ; ACUM+=1
	; ; FOLDER_EXCLUDE[ACUM] := "0 00 VIDEO SNAPSHOT CCSE HIKVISION"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "03_MICROSOFT"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "BT Cloud Sync OLD"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "DL"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "DSC"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "KAT MP3 RECORDER"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "VB6"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "VB6-ARC"
	; ; ACUM+=1
	; ; FOLDER_EXCLUDE[ACUM] := "VB6 _ IN SYNC"
	; ACUM+=1
	; FOLDER_EXCLUDE[ACUM] := "VB6-EXE"
	
	
	Loop % FOLDER_EXCLUDE.MaxIndex()
	{
		FILE_NAME:=FOLDER_EXCLUDE[A_Index]
		StringUpper, FILE_NAME,FILE_NAME
		FOLDER_EXCLUDE[A_Index]:=FILE_NAME
	}
	
	
	X_Index:=FILE_SCRIPT.MaxIndex()
	Loop % FILE_SCRIPT.MaxIndex()
	{
		X_Index-=1
		Loop % FOLDER_EXCLUDE.MaxIndex()
		{
			IF (InStr(FILE_SCRIPT[X_Index]"*", FOLDER_EXCLUDE[A_Index]"*"))
			{
				; msgbox % FILE_SCRIPT[X_Index]
				FILE_SCRIPT.RemoveAt(X_Index)
			}
		}	
	}	

	
	; 1ST
	; SETTIMER AUTO_CLONE_JOB, 1000

	; 2ND
	; SETTIMER SET_OK_BOX,100
	
	; 3RD
	; GOSUB DISPLAY_TOOLTIP
	; SETTIMER RENAME_JOBS_FROM_DIRECTORY_SCANNER,1000
	
RETURN

STATE_XYPOS_Limit:
	STATE_XYPOSCOUNTER=0
	OLD_STATE_XYPOSCOUNTER=0
	SetTimer, STATE_XYPOS_Limit,OFF
Return

				
; TOP LEFT MOUSE CLOSE MPC
TOP_LEFT_MOUSE_CLOSE_MPC:
{
	CoordMode, Mouse, Screen
	MouseGetPos, xpos, ypos 
	
	STATE_XYPOS:=xpos+ypos
	
	; TOOLTIP % STATE_XYPOS "," OLD_STATE_XYPOS
	
	IF (STATE_XYPOS=0 and OLD_STATE_XYPOS<>%STATE_XYPOS%)
		STATE_XYPOSCOUNTER+=1
	
	OLD_STATE_XYPOS=%STATE_XYPOS%
	
	; TOOLTIP % STATE_XYPOSCOUNTER "," OLD_STATE_XYPOSCOUNTER
	
	SET_GO=FALSE
	WinGet, HWND_1, ID, ahk_class MediaPlayerClassicW
	IF HWND_1>0 
		SET_GO=TRUE
	
	WinGet, HWND_2, ID, ahk_class Afx:00007FF6A22C0000:b:0000000000010003:0000000000000006:0000000000000000
	IF HWND_2>0 
		SET_GO=TRUE
	
	WinGet, HWND_3, ID, ahk_class AfxControlBar140su
	IF HWND_3>0 
		SET_GO=TRUE

	; INFRANVIEW
	WinGet, HWND_4, ID, ahk_class FullScreenClass
	IF HWND_4>0 
		SET_GO=TRUE
	
	WinGet, HWND_5, ID, ahk_class IrfanView
	IF HWND_5>0 
		SET_GO=TRUE

	; TOOLTIP % STATE_XYPOSCOUNTER ", " OLD_STATE_XYPOSCOUNTER

	IF SET_GO=TRUE
	IF STATE_XYPOS=0
	IF STATE_XYPOSCOUNTER<>%OLD_STATE_XYPOSCOUNTER%
		SOUNDBEEP 2000,100
	
	
	IF STATE_XYPOSCOUNTER>0
	IF STATE_XYPOSCOUNTER<>%OLD_STATE_XYPOSCOUNTER%
	{
		OLD_STATE_XYPOSCOUNTER=%STATE_XYPOSCOUNTER%
		SetTimer, STATE_XYPOS_Limit, 2000 ;<-- set a oneshot 1 second timer to stop the loop
	}
	OLD_STATE_XYPOSCOUNTER=%STATE_XYPOSCOUNTER%

	
	IF (STATE_XYPOSCOUNTER>1 or A_PriorKey=27)
	{
		IF SET_GO=TRUE
		{
			STATE_XYPOSCOUNTER=0
			WinGet, HWND_ACTIVE, ID, A
			; TOOLTIP %  xpos "," ypos "," HWND_1 "," HWND_2
			SET_GO=FALSE
			IF HWND_1=%HWND_ACTIVE%
				SET_GO=TRUE
			IF HWND_2=%HWND_ACTIVE%
				SET_GO=TRUE
			IF HWND_3=%HWND_ACTIVE%
				SET_GO=TRUE
			IF HWND_4=%HWND_ACTIVE%
				SET_GO=TRUE
			IF HWND_5=%HWND_ACTIVE%
				SET_GO=TRUE

			IF SET_GO=TRUE
			{
				IF (HWND_1>0 or HWND_2>0 or HWND_3>0)
				{
					Process, Close, mpc-hc64.exe
					Soundbeep 2000,200
				}
				
				IF (HWND_4>0 or HWND_5>0)
				{
					Process, Close, i_view32.exe
					Soundbeep 2000,200
				}
			}
		}	
	}	
}
RETURN

; SET OKAY BOX AFTER MADE SELECTION
SET_OK_BOX:
{

	WinGet, HWND_1, ID, GoodSync ahk_class #32770
	IF HWND_1
	{
		WinGetText OutputVar_3,ahk_id %HWND_1%

		WinGet, HWND_2, ID, A
		IF HWND_2<>%HWND_1%
		{
			#WinActivateForce, ahk_id %HWND_1%
		}
		
		IfInString, OutputVar_3, Removable drive with volume name
		{
			LOOP
			{
				SLEEP 50
				ControlGetPos, x, y, w, h, Yes, ahk_id %HWND_1%
				MouseMove, X+10, Y+10
				
				ControlClick, Yes,ahk_id %HWND_1%
				IfWinNotExist, ahk_id %HWND_1%
					BREAK
				SoundBeep , 4000 , 50
			}
		}
	}

	WinGet, HWND_1, ID, Left Folder ahk_class #32770
	IF !HWND_1 
		WinGet, HWND_1, ID, Right Folder ahk_class #32770
	IF !HWND_1 
		O_OutputVar_store=
	
	IF HWND_1 
	{
	WinGetPos, X, Y, Width, Height, ahk_id %HWND_1%
	; tooltip % x " -- " y
	IF X<>770 and Y<>180
		WinMove, ahk_id %HWND_1%,,990,180

	ControlGetText, OutputVar_store, Edit1, ahk_id %HWND_1%
	
	; TOOLTIP % "1 " OutputVar_store "`n2 " O_OutputVar_store
	
	if O_OutputVar_store
		if OutputVar_store<>%O_OutputVar_store%
		{
			O_OutputVar_store=
			LOOP
			{
				SLEEP 50
				ControlGetPos, x, y, w, h, OK, ahk_id %HWND_1%
				MouseMove, X+10, Y+10
				
				ControlClick, OK, ahk_id %HWND_1%
				IfWinNotExist, ahk_id %HWND_1%
					BREAK
				SoundBeep , 4000 , 50
			}
		}
	; TOOLTIP % "1 " OutputVar_store "`n2 " O_OutputVar_store
	
	O_OutputVar_store=%OutputVar_store%

	}
	
}
RETURN


DISPLAY_TOOLTIP:
	VAR_COUNTER2:=VAR_COUNTER
	VAR_COUNTER2+=1
	PART_RENAME_VAR:="HDD 4TB D S01 "
	TOOLTIP % VAR_COUNTER2 " -- " PART_RENAME_VAR FILE_SCRIPT[VAR_COUNTER2]"`n"FILE_SCRIPT[VAR_COUNTER2],1300,50
RETURN


;; *F2::
	IF !xpos
	MouseGetPos, xpos, ypos 
	SEND {F2}
RETURN

RENAME_JOBS_FROM_DIRECTORY_SCANNER:
{

	WinGet, HWND_1, ID, Rename ahk_class #32770

	IF !HWND_1
	{
		O_ID=0
		RETURN
	}
	
	IF HWND_1=%O_ID%
		RETURN
	
	O_ID:=HWND_1
	
	VAR_COUNTER+=1
	FILE_NAME := % FILE_SCRIPT[VAR_COUNTER]
	; PART_RENAME_VAR:="HDD 4TB C S01 "
	F_2:=""
	FILE_NAME:=% PART_RENAME_VAR FILE_NAME F_2
	
	
	StringUpper, FILE_NAME, FILE_NAME
	
	ControlSetText, Edit1,, ahk_id %HWND_1%
	Control, EditPaste, %FILE_NAME%, Edit1, ahk_id %HWND_1%

	WinGet, HWND_2, ID, A
	IF HWND_2<>%HWND_1%
	{
		#WinActivateForce, ahk_id %HWND_1%
	}
	
	LOOP
	{
		SLEEP 100
		ControlGetPos, x, y, w, h, OK, ahk_id %HWND_1%
		MouseMove, X+10, Y+10

		ControlClick, OK, ahk_id %HWND_1%
		IfWinNotExist, ahk_id %HWND_1%
			BREAK
	}
	

	MouseMove, XPOS, YPOS
	GOSUB DISPLAY_TOOLTIP
	SOUNDBEEP 3000,80
	XPOS=
}
RETURN



AUTO_CLONE_JOB:
{

	WinGetTitle, Title, A
	
	POS_VAR:=INSTR(Title,"HDD 4TB D S01")
	IF POS_VAR>0 
	{
		SOUNDBEEP 5000,100
		SLEEP 500
		SENDINPUT !C
	}

	WinGet, HWND_1, ID, Clone Job ahk_class #32770

	IF !HWND_1
	{
		O_ID=0
		RETURN
	}
	
	IF HWND_1=%O_ID%
		RETURN
	
	O_ID:=HWND_1

	SOUNDBEEP 3000,100
		
	LOOP
	{
		SLEEP 100
		ControlGetPos, x, y, w, h, OK, ahk_id %HWND_1%
		MouseMove, X+10, Y+10
		ControlClick, OK, ahk_id %HWND_1%
		IfWinNotExist,  ahk_id %HWND_1%
			BREAK
	}

	SOUNDBEEP 4500,100
}
RETURN


; STRIP SOMETHING FROM RENAME JOB
;; F6::
{
	WinGet, HWND_1, ID, Rename Job ahk_class #32770

	IF !HWND_1
	{
		O_ID=0
		RETURN
	}
	
	
	IF HWND_1=%O_ID%
	{
		RETURN
	}
	
	O_ID:=HWND_1

	
	ControlGettext, OutputVar_1, Button5, ahk_id %HWND_1%
	
	ControlGettext, OutputVar_2, Edit1, ahk_id %HWND_1%
	
	POS_VAR:=INSTR(OutputVar_2," _ 7G")

	OutputVar_4:=SubStr(OutputVar_2,1, POS_VAR)

	SOUNDBEEP 3000,100
	
	IF OutputVar_4
	{
	
		ControlSetText, Edit1,,  ahk_id %HWND_1%
		Control, EditPaste, %OutputVar_4%, Edit1, ahk_id %HWND_1%
		OutputVar_4=
		SOUNDBEEP 4000,100
		
		SLEEP 100
		LOOP
		{
			SLEEP 100
			ControlClick, OK, ahk_id %HWND_1%
			IfWinNotExist,  ahk_id %HWND_1%
				BREAK
		}

		SOUNDBEEP 4500,100
	}
}
RETURN


; \\8-MSI-GP62M-7RD\8_MSI_GP62M_7RD_04_4_SAMSUNG_4TB_HUBIC\D4\#
; =4_SAMSUNG_4TB_HUBIC:\D4\#
;;F6::
{
	WinGet, HWND_1, ID, Right Folder ahk_class #32770

	ControlGettext, OutputVar_1, Button5, ahk_id %HWND_1%
	
	ControlGettext, OutputVar_2, Edit1, ahk_id %HWND_1%

	POS_VAR:=INSTR(OutputVar_2,"4TB_HUBIC\")
	
	OutputVar_4:=SubStr(OutputVar_2, POS_VAR+10)

	
	OutputVar_4="=4_SAMSUNG_4TB_HUBIC:\"%OutputVar_4%
	StringReplace, OutputVar_4, OutputVar_4,/,\, All
	NV := chr(34)
	StringReplace, OutputVar_4, OutputVar_4,%NV%,, All
	
	; TOOLTIP % OutputVar_4
	; MSGBOX % OutputVar_4
	; RETURN
	SOUNDBEEP 3000,100
	
	
	IF OutputVar_4
	{
	
		ControlSetText, Edit1,,  ahk_id %HWND_1%
		Control, EditPaste, %OutputVar_4%, Edit1, ahk_id %HWND_1%
		OutputVar_4=
		SOUNDBEEP 4000,100
		
		#WinActivateForce, ahk_id %HWND_1%
		SLEEP 100
		WinWAIT, ahk_id %HWND_1%
		SLEEP 100
		SENDINPUT {ENTER}
		SLEEP 100
		LOOP
		{
			SLEEP 100
			ControlClick, OK, ahk_id %HWND_1%
			IfWinNotExist,  ahk_id %HWND_1%
				BREAK
		}

		SOUNDBEEP 4500,100
	}
}
RETURN


;; F6::
{

	WinGet, HWND_1, ID, Right Folder ahk_class #32770

	ControlGettext, OutputVar_1, Button5, ahk_id %HWND_1%
	
	IF INSTR(OutputVar_1,"Secure Mode (Encrypted by TLS)")
	{
		ControlGettext, OutputVar_2, Edit1, ahk_id %HWND_1%

		POS_VAR:=INSTR(OutputVar_2,"goodsync/")
		
		OutputVar_4:=SubStr(OutputVar_2, POS_VAR+10)

		; O:\C\0 00 LINK SET QUICKER MOVER
		
		OutputVar_4="=4_SAMSUNG_4TB_HUBIC"%OutputVar_4%
		StringReplace, OutputVar_4, OutputVar_4,/,\, All
		NV := chr(34)
		StringReplace, OutputVar_4, OutputVar_4,%NV%,, All
		
		;TOOLTIP % OutputVar_4
		SOUNDBEEP 3000,100
	}
	
	
	IF OutputVar_4
	{
	
		ControlSetText, Edit1,,  ahk_id %HWND_1%
		Control, EditPaste, %OutputVar_4%, Edit1, ahk_id %HWND_1%
		OutputVar_4=
		SOUNDBEEP 4000,100
		
		#WinActivateForce, ahk_id %HWND_1%
		SLEEP 100
		WinWAIT, ahk_id %HWND_1%
		SLEEP 100
		SENDINPUT {ENTER}
		SLEEP 100
		LOOP
		{
			SLEEP 100
			ControlClick, OK, ahk_id %HWND_1%
			IfWinNotExist,  ahk_id %HWND_1%
				BREAK
		}

		SOUNDBEEP 4500,100
	}
}
RETURN





; F5::
; {
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}C
	; Send {ctrl up}
	; Sleep 500

	; VAR_CLIP=%clipboard%

	; ; StringUpper, VAR_CLIP, VAR_CLIP
	
	; StringReplace, VAR_CLIP, VAR_CLIP,/file://,, All
	
	; Sleep 800
	; clipboard=%VAR_CLIP%

	; Sleep 400
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}V
	; Send {ctrl up}

	; ; SLEEP 500
	; ; LOOP
	; ; {
		; ; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
		; ; SLEEP 100
		; ; ControlClick, OK, Rename ahk_class #32770
		; ; IfWinNotExist, Rename ahk_class #32770
			; ; BREAK
	; ; }

; }
; RETURN


; F5::
; {
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {right}
	; Sleep 100
	; Send {ctrl down}V
	; Send {ctrl up}

	; SLEEP 500
	; LOOP
	; {
		; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
		; SLEEP 100
		; ControlClick, OK, Folder ahk_class #32770
		; IfWinNotExist, Folder ahk_class #32770
			; BREAK
	; }
; }
; RETURN


; F4::
; {
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}C
	; Send {ctrl up}
	; Sleep 500

	; VAR_CLIP=%clipboard%

	; ;StringUpper, VAR_CLIP, VAR_CLIP

	; ;gstps://nas-qnap-ml.matt-lan-2.goodsync/file:///share/CACHEDEV1_DATA/Multimedia/SW/SW SOFTWARE
	; ;\\NAS-QNAP-ML\PUBLIC_CONTACT
	
	; ;StringReplace, VAR_CLIP, VAR_CLIP,`:`\,%A_Space%, All
	; ;StringReplace, VAR_CLIP, VAR_CLIP,`\`\NAS-QNAP-ML,gstps`://nas-qnap-ml`.matt-lan-2`.goodsync/file`:///share/CACHEDEV1_DATA, All
	; StringReplace, VAR_CLIP, VAR_CLIP,`\`\NAS-QNAP-ML,, All

	; Sleep 800
	; clipboard=%VAR_CLIP%

	; ; Sleep 400
	; ; Send {ctrl down}A
	; ; Sleep 100
	; ; Send {ctrl up}
	; ; Sleep 100
	; ; Send {ctrl down}V
	; ; Send {ctrl up}

	; ; SLEEP 500
	; ; LOOP
	; ; {
		; ; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
		; ; SLEEP 100
		; ; ControlClick, OK, Folder ahk_class #32770
		; ; IfWinNotExist, Folder ahk_class #32770
			; ; BREAK
	; ; }

; }
; RETURN

; F4::
; {
	; DetectHiddenWindows, off
	; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {delete}

	; SLEEP 200
	; LOOP
	; {
		; SLEEP 200
		; #WinActivateForce, Folder ahk_class #32770
        ; ;SoundBeep , 2000 , 400
		; ControlClick, OK, Folder ahk_class #32770
		; IfWinNotExist, Folder ahk_class #32770
			; BREAK
	; }
; }
; RETURN




; F4::
; {
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}C
	; Send {ctrl up}
	; Sleep 500

	; VAR_CLIP=%clipboard%
	; StringUpper, VAR_CLIP, VAR_CLIP

	; StringReplace, VAR_CLIP, VAR_CLIP,`:`\,%A_Space%, All
	; StringReplace, VAR_CLIP, VAR_CLIP,`\,_, All
	; StringReplace, VAR_CLIP, VAR_CLIP,`.,_, All
	; Sleep 800
	; clipboard=%VAR_CLIP%

	; ; Sleep 400
	; ; Send {ctrl down}A
	; ; Sleep 100
	; ; Send {ctrl up}
	; ; Sleep 100
	; ; Send {ctrl down}V
	; ; Send {ctrl up}

	; SLEEP 500
	; LOOP
	; {
		; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
		; SLEEP 100
		; ControlClick, OK, Folder ahk_class #32770
		; IfWinNotExist, Folder ahk_class #32770
			; BREAK
	; }

	; }
; RETURN



; F4::
; {
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}C
	; Send {ctrl up}
	; Sleep 500

	; VAR_CLIP=%clipboard%
	; StringUpper, VAR_CLIP, VAR_CLIP

	; StringReplace, VAR_CLIP, VAR_CLIP,vs LINKFOLDER,, All
	; Sleep 500
	; clipboard=%VAR_CLIP%

	; Sleep 400
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}V
	; Send {ctrl up}

	; SLEEP 500
	; LOOP
	; {
		; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
		; SLEEP 100
		; ControlClick, OK, Rename Job ahk_class #32770
		; IfWinNotExist, Rename Job ahk_class #32770
			; BREAK
	; }

	; }
; RETURN




; F4::
; {
	; Send {F2}
	; Sleep 100
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}C
	; Send {ctrl up}
	; Sleep 500

	; VAR_CLIP=%clipboard%
	; StringUpper, VAR_CLIP, VAR_CLIP
	; StringReplace, VAR_CLIP, VAR_CLIP,S01,S02, All
	; StringReplace, VAR_CLIP, VAR_CLIP, (1),, All
	; Sleep 500
	; clipboard=%VAR_CLIP%

	; Sleep 400
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}V
	; Send {ctrl up}

	; SLEEP 500
	; LOOP
	; {
		; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
		; SLEEP 100
		; ControlClick, OK, Rename Job ahk_class #32770
		; IfWinNotExist, Rename Job ahk_class #32770
			; BREAK
	; }

	; }
; RETURN


; F4::
; {
	; Send {ctrl down}A
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {ctrl down}C
	; Send {ctrl up}
	; Sleep 200
	; VAR_CLIP=%clipboard%
	; StringUpper, VAR_CLIP, VAR_CLIP
	; StringReplace, VAR_CLIP, VAR_CLIP, D`:`\, , All
	; Sleep 200
	; clipboard=%VAR_CLIP%
; }
; RETURN



; F4::
; {
	; IF GetKeyState("Capslock", "T") 
		; Send {shift down}
	; SENDINPUT C{:}
	; IF GetKeyState("Capslock", "T") 
		; Send {shift up}
	; SENDINPUT {ENTER}
	; SLEEP 500
	; LOOP
	; {
		; SetTitleMatchMode 2  ; Avoids specify the full path of the file below.
		; SLEEP 100
		; ControlClick, OK, Folder ahk_class #32770
		; IfWinNotExist, Folder ahk_class #32770
			; BREAK
	; }
; }
; RETURN



; F4::
; {
	; Send {ctrl down}a
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; SEND 12
	; SENDINPUT {ENTER}
; }
; RETURN



; F4::
; {
	; Send {ctrl down}a
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {shift down}
	; Send C:
	; Send {shift up}
	; Send \
	; Send {shift down}
	; Send PS
	; Send {shift up}
	; Send tart
	; Sendinput {ENTER}
	; SLEEP 500
	; LOOP
	; {
	; SLEEP 100
	; ControlClick, OK, Left Folder ahk_class #32770
	; IfWinNotExist, Left Folder ahk_class #32770
		; BREAK
	; }
; }
; Return

; F4::
; {
	; SEND 0
	; SEND {SPACE}
	; SENDINPUT {ENTER}
; }
; RETURN


; F4::
; {
	; Send 7
	; Send {shift down}
	; Sleep 100
	; Sendinput G
	; Send {shift up}
	; Sendinput {ENTER}
; }
; Return


; F4::
; {
	; Send {ctrl down}a
	; Sleep 100
	; Send {ctrl up}
	; Sleep 100
	; Send {shift down}
	; Send C:
	; Send {shift up}
	; Send \
	; Send {shift down}
	; Send SCRIPTER
	; Send {shift up}
; }
; Return



;F4::
;{
;Sendinput existboth
;}
;Return

;-------------------------------------------------------------------------
; CLIPBOARD CTRL 'A'-ALL AND THEN COPY
;-------------------------------------------------------------------------
;F4::
;   Send {ctrl down}a
;   Sleep 100
;   Send {ctrl up}
;   Sleep 100
;   Send {ctrl down}c{ctrl up}
;Return
;-------------------------------------------------------------------------

;F4::
;	Send Mill View Hospital
;Return


;F1::
;   Send {ctrl down}A{ctrl up}
;   Sleep 100
;   Send {ctrl down}V{ctrl up}
;Return
;-------------------------------------------------------------------------

;lock control key up or down shift and ctrl
;WHEN SELECT IS DIFFERCULT AS CTRL BOUCE UP WHEN HOLD KEY DOWN
;-------------------------------------------------------------------------
;+F4::
;   Send {ctrl down}
;   SoundBeep , 1500 , 400
;Return
;-------------------------------------------------------------------------
;^F4::
;   Send {ctrl up}
;   SoundBeep , 2000 , 400
;Return

;NORTON
;F4::
;   SEND :\
;Return 

;-------------------------------------------------------------------------
;NOT AT MOMENT
;GRAB A LINE BEGIN TO END
;F4::
;   Send {home}+{end}{ctrl down}c{ctrl up}
;-------------------------------------------------------------------------

;-------------------------------------------------------------------------
; F4 __ CLIPBOARD CTRL 'A'-ALL DELETE AND WAIT AND THEN PASTE CTRL V 
;-------------------------------------------------------------------------
;F4::
;   SoundBeep , 1500 , 400
;   Sendinput ^a
;   Sendinput {delete}
;   Sendinput {ctrl down}
;   sleep 200
;   Sendinput v
;   Sendinput {ctrl up}
;-------------------------------------------------------------------------


;F4::
;   Sendinput ^a
;   Sendinput {delete}
;   Sendinput 48
;   Send,{ENTER}
;   SoundBeep , 1500 , 400


;------------------------------------------------------------
;----
;Deselect All Text - Ask for Help - AutoHotkey Community
;https://autohotkey.com/board/topic/122592-deselect-all-text/
;----
;GEV
;Members
;1364 posts
;Last active: Mar 15 2017 06:36 AM
;Joined: 23 Oct 2013
;Alt+Click doesn't open a link. Try this:
;------------------------------------------------------------
;F4::
;WinGetPos,,,Xmax,Ymax,A ; get active window size
;Ycenter := Ymax/2
;Send, {ALTDOWN}
;ControlClick, x10 y%Ycenter%, A   ;this is the safest point, I think
;Send, {ALTUP}
;return


;--------------------------------------------------------------------



;-------------------------------------------------------------
;MAKE WIN + Y WORK TO DO A SCROLL LOCK FOR WINDOWSE STOP CLEAR
;-------------------------------------------------------------
;NOT WORKING TO DO A WIN + KEY TO RELACE
;LIKE AUTOKEY USE WIN + A -- TO STOP A SPY
;-------------------------------------------------------------
;^::

;#Y::^L

;#Y::^ScrollLock


;#Y::
;SEND ^L
;SEND ScrollLock
;-------------------------------------------------------------


;---------------------------------------------------
;CTRL F FIND
;---------------------------------------------------
;F6::
;   Send,{ctrl down}f{ctrl up}{ENTER}
;   Send,{ctrl down}f{ctrl up}
;---------------------------------------------------
;CTRL F FIND AND ENTER ON HIGH-LIGHTED SELECTED TEXT
;---------------------------------------------------
;F6::
;   Send,{ctrl down}f{ctrl up}{ENTER}




;# ------------------------------------------------------------------
TIMER_PREVIOUS_INSTANCE:
SETTIMER TIMER_PREVIOUS_INSTANCE,10000

if ScriptInstanceExist()
{
	Exitapp
}
return

ScriptInstanceExist() {
	static title := " - AutoHotkey v" A_AhkVersion
	dhw := A_DetectHiddenWindows
	DetectHiddenWindows, On
	WinGet, match, List, % A_ScriptFullPath . title
	DetectHiddenWindows, % dhw
	return (match > 1)
	}
Return

;# ------------------------------------------------------------------
EOF:                           ; on exit
ExitApp     
;# ------------------------------------------------------------------

; Register a function to be called on exit:
OnExit("ExitFunc")

; Register an object to be called on exit:
OnExit(ObjBindMethod(MyObject, "Exiting"))

;# ------------------------------------------------------------------
ExitFunc(ExitReason, ExitCode)
{
    if ExitReason not in Logoff,Shutdown
    {
        ;MsgBox, 4, , Are you sure you want to exit?
        ;IfMsgBox, No
        ;    return 1  ; OnExit functions must return non-zero to prevent exit.
    }
    ; Do not call ExitApp -- that would prevent other OnExit functions from being called.
}

class MyObject
{
    Exiting()
    {
        ;
        ;MsgBox, MyObject is cleaning up prior to exiting...
        /*
        this.SayGoodbye()
        this.CloseNetworkConnections()
        */
    }
}
;# ------------------------------------------------------------------
; exit the app

