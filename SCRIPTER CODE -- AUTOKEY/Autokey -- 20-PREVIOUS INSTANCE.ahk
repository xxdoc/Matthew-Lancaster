﻿;  ==================================================================
;# __ C:\SCRIPTER\SCRIPTER CODE -- AUTOKEY\Autokey -- 18-NORTON CONTOL BOOTER.ahk
;# __ 
;# __ Autokey -- 20-PREVIOUS INSTANCE.ahk
;# __ 
;# BY Matthew __ Matt.Lan@Btinternet.com __ 
;# START     TIME [ Tuesday 07:24:00 Am_12 December 2017 ]
;# __ 
;  ==================================================================

#Warn
#NoEnv
;#SingleInstance Off
#SingleInstance Force
;--------------------
#Persistent
;IT USER ExitFunc TO EXIT FROM #Persistent
;--------------------

;# ------------------------------------------------------------------
;# ------------------------------------------------------------------

; SCRIPT ============================================================

DetectHiddenWindows, on

SoundBeep , 2000 , 100
SoundBeep , 2500 , 100

setTimer TIMER_PREVIOUS_INSTANCE,1

Return

TIMER_PREVIOUS_INSTANCE:
setTimer TIMER_PREVIOUS_INSTANCE,10000

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



;# ----------------------------------------------------------------------
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


;GOOD SCRIPT EXAMPLE PAGE HELPER
;----
;1 Hour Software by Skrommel - DonationCoder.com
;http://www.donationcoder.com/Software/Skrommel/index.html#GoneIn60s
;----

;HELP FIND
;ScriptInstanceExist()
;----
;autohotkeys how check auto script is running previous instance - Google Search
;https://www.google.co.uk/search?num=50&q=autohotkeys+how+check+auto+script+is+running+previous+instance&spell=1&sa=X&ved=0ahUKEwiq9ZrY8YPYAhXRFsAKHRq3A1EQBQgmKAA&biw=1523&bih=670
;--------
;Check if Script is Running - Ask for Help - AutoHotkey Community
;https://autohotkey.com/board/topic/77466-check-if-script-is-running/
;----