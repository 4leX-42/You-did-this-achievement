; **Descripción:** Este script ejecuta un bucle infinito que presiona la tecla Enter repetidamente. Para iniciar, presiona F7; para detener, presiona F8
; **Script creado por 4lex-42**

; **Asignación de la tecla de acceso rápido:**
F7::
    ; Iniciar un bucle infinito para pulsaciones continuas de Enter.
    Loop
    {
        ; Enviar la tecla Enter sin retardo.
        SendInput, {Enter Down}
        Sleep, 0 ; Retardo mínimo
        SendInput, {Enter Up}

        ; Comprobar si se mantiene presionada la tecla F8.
        if (GetKeyState("F8", "P"))
        {
            ; Salir del bucle si se mantiene presionada la tecla F8, deteniendo las pulsaciones de Enter.
            break ; Salir del bucle
        }
    }
return

; **Fin del script**