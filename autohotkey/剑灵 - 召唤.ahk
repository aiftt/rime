#SingleInstance Force
#Include, common.ahk

; ,,
XButton2::
    Loop {
        ; color := GetColor(904, 877)
        ; If (color == 0x262b30) {
        ;     ToolTip, "found" %color%
        ; } else {
        ;     ToolTip, "not found" %color%
        ; }
        Send, {f}
        Sleep, 50
        Send, {1}{2}
        Sleep, 50
        Send, {LButton}{RButton}
    } Until Not getkeystate("XButton2","P")
; SetTimer tooltip, -5000
return