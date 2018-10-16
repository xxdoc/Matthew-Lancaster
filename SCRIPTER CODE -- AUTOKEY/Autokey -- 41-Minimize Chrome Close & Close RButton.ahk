;  =============================================================
;# __ C:\SCRIPTER\SCRIPTER CODE -- AUTOKEY\Autokey -- 41-Minimize Chrome Close & Close RButton.ahk
;# __ 
;# __ Autokey -- 41-Minimize Chrome Close & Close RButton.ahk
;# __ 
;# __ BY Matthew Lancaster 
;# __ Matt.Lan@Btinternet.com
;# __ 
;# __ DATE BEGIN
;# __ Tue 16-Oct-2018 03:00:00
;# __ 
;  =============================================================

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;

#Persistent
;IT USER ExitFunc TO EXIT FROM #Persistent
;OR      Exitapp  TO EXIT FROM #Persistent
;Exitapp CALLS ONTO ExitFunc
;--------------------


;# ------------------------------------------------------------------
; DESCRIPTION
;# ------------------------------------------------------------------
; QUITE SIMPLY FOR CERTAIN PROGRAMS HARDCODE-ED IN SUBROUTINE HERE
; WILL STOP THE CLOSE BUTTON AND INSTEAD MINIMIZE
; AND ALSO CLOSE WHEN RIGHT CLICKER
; ESPECIALLY FOR CHROME NOT LOSE ALL YOUR TAB TO POSSIBLE FAILURE
;# ------------------------------------------------------------------
; SOURCE
; ----
; Disable the minimize/maximize/close buttons - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/83455-disable-the-minimizemaximizeclose-buttons/
; ----
; NICE IDEA
; AFTER A RECENT FRIGHT CLOSE OF CHROME UNINTENTIONAL BUT OKAY NONE LOSS OF WORKER
; A LITTLE HELP ON SUBJECT
; MOST WINDOW IS ABLE TO SET CLOSE BUTTON DISABLED BUT NOT CHROME
; MAYBE CODED TO SWITCH BACK ON _ INTENSION WAS THERE
; ----
; Close window when mouse hover red X square box? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/81233-close-window-when-mouse-hover-red-x-square-box/
; ----
; ----
; Close open windows when mouse over right corner square? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/97060-close-open-windows-when-mouse-over-right-corner-square/
; --------
; Minimize to Tray by Clicking Close Button? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/26521-minimize-to-tray-by-clicking-close-button/#entry176808
; ----
; ----
;# ------------------------------------------------------------------


;# ------------------------------------------------------------------
; SESSION 001
; -------------------------------------------------------------------
; ----
; SOURCE
; ----
; Disable the minimize/maximize/close buttons - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/83455-disable-the-minimizemaximizeclose-buttons/
; ----
; -------------------------------------------------------------------
; FROM   Tue 16-Oct-2018 03:01:06
; TO     Tue 16-Oct-2018 03:30:00
;# ------------------------------------------------------------------

;# ------------------------------------------------------------------
; SESSION 002
; -------------------------------------------------------------------
; ----
; SOURCE
; ----
; Close window when mouse hover red X square box? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/81233-close-window-when-mouse-hover-red-x-square-box/
; ----
; CODE TO MINIMIZE CHROME INSTEAD OF CLOSE 
; CODE ALSO RIGHT CLICK ON CLOSE WHICH NORMAL DOES NOTHING AND WHEN PRESS SHIFT KEY AND THEN WILL CLOSE
; CODE ADD _ TO USE WITH MULTIPLE PROGRAM 
; CODE ADD _ SOUNDBEEP WHENEVER ACTIVITY AT CLOSE BUTTON AND CLICK MADE
; CODE ADD _ THE TOP FEW LINE OF PIXEL IN CHROME GET TREAT AS CLOSE BUTTON 
; -------------------------------------------------------------------
; FROM   Tue 16-Oct-2018 03:30:00
; TO     Tue 16-Oct-2018 08:32:00 __ 5 HOUR 2 MINUTE 
;# ------------------------------------------------------------------



;--------------------
#SingleInstance force
;--------------------
;--------------------

; -------------------------------------------------------------------
; CODE INITIALIZE
; -------------------------------------------------------------------
SoundBeep , 1500 , 400

SETTIMER TIMER_PREVIOUS_INSTANCE,1

GLOBAL O_x
GLOBAL O_y


HTCLOSE := 20
WM_NCHITTEST := 0x0084

CLOSE_BUTTON_HOOVER_ACTIVITY=0
SET_GO_2=0

; -------------------------------------------------------------------
; TOOLTIP INFO ABOUT CLOSE BUTTON HOOVER
; AND EXTRA SOUNDBEEP-ER AT CLOSE ACTIVITY GETTING NEARER
; -------------------------------------------------------------------
SetTimer Watch_3, 100
; -------------------------------------------------------------------

Return

; -------------------------------------------------------------------
LButton:: ; Minimize Google Chrome instead of close when close button is clicked
CoordMode, Mouse, Screen
MouseGetPos, x, y, hwnd
; BIT OF COMPENSATION ON MY COMPUTER OFFSET AS 
; CLOSE BUTTON DETECT IS LITTLE OVER ON MAX RESTORE BUTTON
x-=20 

SET_GO_1=FALSE
if IsOverCloseButton(X, Y, hWnd)
	SET_GO_1=TRUE

GOSUB PROGRAM_SET_TO_USE

IF SET_GO_2=TRUE
{
	If SET_GO_1=TRUE
	{
		WinMinimize ahk_id %hWnd%
		SOUNDBEEP 2000,100
	}
	else
	{
		Click down
	}
}
else
	Click down

IF SET_GO_1=TRUE
	IF SET_GO_2=FALSE
		SOUNDBEEP 1000,100
RETURN
; -------------------------------------------------------------------

RIGHT_CLICK_CLOSE_IT:
CoordMode, Mouse, Screen
MouseGetPos, x, y, hwnd
; BIT OF COMPENSATION ON MY COMPUTER OFFSET AS 
; CLOSE BUTTON DETECT IS LITTLE OVER ON MAX RESTORE BUTTON

SET_GO_1=FALSE
if IsOverCloseButton(X, Y, hWnd)
	SET_GO_1=TRUE

GOSUB PROGRAM_SET_TO_USE

IF SET_GO_2=TRUE
{
	If SET_GO_1=TRUE
	{
		; SLEEP 400 
		; -----------------------------------------------------------
		; IF NOT A DELAY HERE THEN RIGHT CLICK WILL HAPPEN ON 
		; THE WINDOW UNDERNEATH THE ONE THAT CLOSED
		; -----------------------------------------------------------
		; BETTER TO USE KeyWait, RButton 
		; BUT HAVE TO DO BEFORE WINCLOSE
		; AND SLIGHT MISLEADING EXCPT FOR BEEP THAT NOTHING GOING TO HAPPEN 
		; AS EVENT IS AFTER RBUTTON UP
		; BUT SOUNDBEEP OUGHT TO GIVE A CLUE
		; -----------------------------------------------------------
		SOUNDBEEP 2000,100
		KeyWait, RButton
		WinClose ahk_id %hWnd%
	}
	else
	{
		Click, down, right
	}
}
else
{
	Click, down, right
}

IF SET_GO_1=TRUE
	IF SET_GO_2=FALSE
		SOUNDBEEP 1000,100
RETURN

PROGRAM_SET_TO_USE:

WinGetClass, Class_Title, ahk_id %hWnd%

SET_GO_2=FALSE
IfInString, Class_Title, ThunderRT6FormDC
	SET_GO_2=TRUE
	SET_GO_2=FALSE

IfInString, Class_Title, Chrome_WidgetWin_1
	SET_GO_2=TRUE


RETURN

; -------------------------------------------------------------------
LButton Up::Click Up
; -------------------------------------------------------------------

; EITHER USE RBUTTON ON ITS OWN OR AS ABOVE SHIFT KEY AS SHOW BUT REQUIRE KEYBOARD AROUND
; -------------------------------------------------------------------
~Shift & RButton:: ; Minimize Google Chrome instead of close when close button is clicked
GOSUB RIGHT_CLICK_CLOSE_IT
return
; -------------------------------------------------------------------

; DON;T REQUIRE THIS RButton ON IT OWN WILL DO WORKER
; -------------------------------------------------------------------
; ~Shift & RButton Up::Click, up, right
; -------------------------------------------------------------------

; EITHER USE RBUTTON ON ITS OWN OR AS ABOVE SHIFT KEY ALSO BUT REQUIRE KEYBOARD AROUND
; -------------------------------------------------------------------
~RButton:: ; Minimize Google Chrome instead of close when close button is clicked
IF GetKeyState("shift", "p")
	RETURN
GOSUB RIGHT_CLICK_CLOSE_IT
RETURN
; -------------------------------------------------------------------

; -------------------------------------------------------------------
RButton Up::
{
	Click, up, right
}
RETURN
; -------------------------------------------------------------------


Watch_3:
CoordMode Mouse, Screen
MouseGetPos, x, y, hWnd
;--------------------------------------------------------------------
; REFINE THE CPU USAGE AS FINAL PART DONE
;--------------------------------------------------------------------
IF (O_X=%X% and O_Y=%Y%)
	Return
O_X=X
O_Y=Y

CLOSE_BUTTON_HOOVER_ACTIVITY_2=FALSE
if IsOverCloseButton(X, Y, hWnd)
	CLOSE_BUTTON_HOOVER_ACTIVITY_2=TRUE

	IF CLOSE_BUTTON_HOOVER_ACTIVITY<>%CLOSE_BUTTON_HOOVER_ACTIVITY_2%
		SOUNDBEEP 1000,40
			
	CLOSE_BUTTON_HOOVER_ACTIVITY=%CLOSE_BUTTON_HOOVER_ACTIVITY_2%

	IF CLOSE_BUTTON_HOOVER_ACTIVITY=TRUE
	{
		GOSUB PROGRAM_SET_TO_USE
		IF SET_GO_2=TRUE
		{
			ToolTip % "LEFT MOUSE BUTTON = MINIMIZE`r`nRIGHT MOUSE BUTTON = CLOSE"
		}
		ELSE
		{
			ToolTip % "MOUSE`r`nON`r`nCLOSE`r`nBUTTON"
		}
	}
	ELSE
		ToolTip 
Return


; -------------------------------------------------------------------
; CORRECT METHOD FOUND FOR AREO
; ----
; Minimize to Tray by Clicking Close Button? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/26521-minimize-to-tray-by-clicking-close-button/#entry176808
; ----

; Reference: http://www.autohotkey.com/board/topic/20431-wm-nchittest-wrapping-whats-under-a-screen-point/
IsOverCloseButton(x, y, hWnd)
{
	; ---------------------------------------------------------------
	; THE HIGHER THE X OFFSET NUMBER THE MORE CLOSER IT IS TO THE 
	; CLOSE BUTTON AND NOT SPREAD ALSO ONTO MAXIMIZE
	; ---------------------------------------------------------------
	x-=30
	
	; ---------------------------------------------------------------
	; CHROME HAS GOT MORE OVERLAP ONTO MAXIMIZE BUTTON
	; ANOTHER OFFSET
	; CAN'T BLOCK THE MAXIMIZE BUTTON OVER
	; ---------------------------------------------------------------
	WinGetClass, Class_Title, ahk_id %hWnd%
	IfInString, Class_Title, Chrome_WidgetWin_1
	x-=25
		
	SET_EXIT_VAR=FALSE
	SendMessage, 0x84,, (x & 0xFFFF) | (y & 0xFFFF) << 16,, ahk_id %hWnd%
	If ErrorLevel in 9,12,14,20 ; 20 is for Close box but Vista/Aero bug in WM_NCHITTEST	
		SET_EXIT_VAR=TRUE
	
	CoordMode Mouse, Window
	WinGetPos, WinPosX, WinPosY, WindowWidth, WindowHeight, ahk_id %hWnd%
	MouseGetPos, x, y, hWnd
	
	; TOOLTIP % WindowWidth " -- " WindowHeight  " -- " x " -- " y  " -- " WindowWidth-x
	
	; ---------------------------------------------------------------
	; SOME EXTRA
	; SAFEGUARD THE TOP FEW LINE OF PIXEL IN CHROME GET TREAT AS CLOSE BUTTON 
	; ACCORDING TO WM_NCHITTEST
	; SO WE HAVE NAILED IT AGAIN
	; ---------------------------------------------------------------
	IF (y>45 or WindowWidth-x>80)
	SET_EXIT_VAR=FALSE
	
	IF SET_EXIT_VAR=TRUE
		RETURN TRUE
}
RETURN
; -------------------------------------------------------------------


; -------------------------------------------------------------------
; OLDER CODE WHEN GOT STATING
; -------------------------------------------------------------------
; girlgamer
; Moderators
; 3263 posts
; Last active: Feb 01 2015 09:49 AM
; Joined: 04 Jun 2010
; ----
; Disable the minimize/maximize/close buttons - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/83455-disable-the-minimizemaximizeclose-buttons/
; ----
; -------------------------------------------------------------------
; F12:: ;<-- Move win and change style
	; WinGet, TempWindowID, ID, A
	; If (WindowID != TempWindowID)
	; {
		; WindowID:=TempWindowID
		; WindowState:=0
	; }
	; If (WindowState != 1)
	; {
		; WinGetPos, WinPosX, WinPosY, WindowWidth, WindowHeight, ahk_id %WindowID%
		; WinSet, Style, ^0xC40000, ahk_id %WindowID%
		; ;WinMove, ahk_id %WindowID%, , 0, 0, A_ScreenWidth, A_ScreenHeight
	; }
	; Else
	; {
		; WinSet, Style, ^0xC40000, ahk_id %WindowID%
		; ;WinMove, ahk_id %WindowID%, , WinPosX, WinPosY, WindowWidth, WindowHeight
	; }
	; WindowState:=!WindowState
; return
; ; -------------------------------------------------------------------
  
  
 
 
;# ------------------------------------------------------------------
; USUAL END BLOCK OF CODE TO HELP EXIT ROUTINE
;# ------------------------------------------------------------------


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



; -------------------------------------------------------------------
; REFERENCE PAGES OPEN 30
; -------------------------------------------------------------------
; ----
; AHK DISABLE CHROME CLOSE BUTTON - Google Search
; https://www.google.co.uk/search?q=AHK+DISBALE+CHROME+CLOSE+BUTTON&oq=AHK+DISBALE+CHROME+CLOSE+BUTTON&aqs=chrome..69i57j69i64.7256j0j7&sourceid=chrome&ie=UTF-8
; --------
; Disable the minimize/maximize/close buttons - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/83455-disable-the-minimizemaximizeclose-buttons/
; --------
; AHK MOVE MOUSE WHEN OVER CLOSE BUTTON - Google Search
; https://www.google.co.uk/search?q=AHK+MOVE+MOUSE+WHEN+OVER+LCOSE+BUTTON&oq=AHK+MOVE+MOUSE+WHEN+OVER+LCOSE+BUTTON&aqs=chrome..69i57j69i64.7656j0j7&sourceid=chrome&ie=UTF-8
; --------
; Close window when mouse hover red X square box? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/81233-close-window-when-mouse-hover-red-x-square-box/
; --------
; Close open windows when mouse over right corner square? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/97060-close-open-windows-when-mouse-over-right-corner-square/
; --------
; detect button under cursor (using WM_NCHITTEST)? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/57049-detect-button-under-cursor-using-wm-nchittest/
; --------
; Minimize to Tray by Clicking Close Button? - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/26521-minimize-to-tray-by-clicking-close-button/#entry176808
; --------
; Disable And Hide Close Button On Gui - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/59515-disable-and-hide-close-button-on-gui/
; --------
; disable "window close button (X)" - Google Groups
; https://groups.google.com/forum/#!topic/vim_use/lh0JTeQ5Tws
; --------
; Downloads – Skrommel's One Hour Software
; http://www.dcmembers.com/skrommel/downloads/
; --------
; CloseToQuit – Skrommel's One Hour Software
; http://www.dcmembers.com/skrommel/download/closetoquit/
; --------
; DelEmpty – Skrommel's One Hour Software
; http://www.dcmembers.com/skrommel/download/delempty/
; --------
; BatteryRun – Skrommel's One Hour Software
; http://www.dcmembers.com/skrommel/download/batteryrun/
; --------
; CacheSort – Skrommel's One Hour Software
; http://www.dcmembers.com/skrommel/download/cachesort/
; --------
; NoClose – Skrommel's One Hour Software
; http://www.dcmembers.com/skrommel/download/noclose/
; --------
; NoClose – Skrommel's One Hour Software
; http://www.dcmembers.com/skrommel/download/noclose/
; --------
; WinSet - Syntax & Usage | AutoHotkey
; https://www.autohotkey.com/docs/commands/WinSet.htm
; --------
; MouseMove - Syntax & Usage | AutoHotkey
; https://autohotkey.com/docs/commands/MouseMove.htm
; --------
; Loop - Syntax & Usage | AutoHotkey
; https://autohotkey.com/docs/commands/Loop.htm
; --------
; Nested Loops - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/62226-nested-loops/
; --------
; Adding Variables - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/73484-adding-variables/
; --------
; Want to use RButton as a shift key for keyboard - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/57907-want-to-use-rbutton-as-a-shift-key-for-keyboard/
; --------
; Click - Syntax & Usage | AutoHotkey
; https://autohotkey.com/docs/commands/Click.htm
; --------
; autohotkey - Do something while shift and left click pressed or right click pressed - Stack Overflow
; https://stackoverflow.com/questions/32438778/do-something-while-shift-and-left-click-pressed-or-right-click-pressed?rq=1
; --------
; WinClose - Syntax & Usage | AutoHotkey
; https://autohotkey.com/docs/commands/WinClose.htm
; --------
; Sense if RButton being held down (for X amount of time?) - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/100802-sense-if-rbutton-being-held-down-for-x-amount-of-time/
; --------
; KeyWait - Syntax & Usage | AutoHotkey
; https://autohotkey.com/docs/commands/KeyWait.htm
; --------
; Disabled right click. Can't abort script. - Ask for Help - AutoHotkey Community
; https://autohotkey.com/board/topic/123104-disabled-right-click-cant-abort-script/
; --------
; CoordMode - Syntax & Usage | AutoHotkey
; https://autohotkey.com/docs/commands/CoordMode.htm
; --------
; WinGetPos - Syntax & Usage | AutoHotkey
; https://autohotkey.com/docs/commands/WinGetPos.htm
; ----
; -------------------------------------------------------------------
; -------------------------------------------------------------------