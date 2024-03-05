; **Description:** This script runs an infinite loop that repeatedly presses the Enter key. To start, press F7; to stop, press F8
; **Script created by 4lex-42**

; **Assignment of the hotkey:**
F7::
    ; Start an infinite loop for continuous key presses.
    Loop
    {
        ; Send the Enter key with minimal delay.
        SendInput, {Enter Down}
        Sleep, 0 ; Minimal delay
        SendInput, {Enter Up}

        ; Check if the F8 key is held down.
        if (GetKeyState("F8", "P"))
        {
            ; Exit the loop if the F8 key is held down, stopping the key presses.
            break ; Exit the loop
        }
    }
return

; **End of the script**