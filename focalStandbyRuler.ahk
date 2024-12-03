#Requires AutoHotkey v2.0
#SingleInstance Force    ; skip the dialog box and close the old instance

; ! = alt
; ^ = ctrl
; + = shift

$F10::Suspend
Pause::Pause  ; Assign the toggle-pause function to the "pause" to F10. reload script with using of the tray icon

PlayAudio() {
	;play wav file
	wavFilePath := "c:\portable\focalStandbyRuler_v1.0\hi-freq-sine.wav"
    SoundPlay wavFilePath, "Wait"
	return
}

$^`:: { ; manually play audio by pressing ctrl+` (tilde)
	PlayAudio()
	return
} 

Loop
{

	Sleep 1000

	;check if system is locked
	if (!WinExist("A")) ; lockscreen password entry
		continue
	if (WinGetProcessName("A") == "LockApp.exe")
		continue
		
	;check if user is idle 15 mins
	If A_TimeIdle > 1000*60*15
		continue
	
	PlayAudio()
	
	Sleep 1000*60*10 ; 10 minutes sleep before next iteration
}

