#SingleInstance Force
#Include common.ahk

; 左键
XButton2::
    Loop
    {
        ;; 莲花指
        color2 := GetColor(977, 1006) ; 0xE5FFFF
        if (color2 == 0x1D2CB6) {
            ; ToolTip, "ok" %color2%
            Send, {c}
        } else {
            ; ToolTip, "nok" %color2%
        }
        ; 左右攒并炎玉
        Send, {f}{LButton}{RButton}
        ;; 爆裂炎炮
        color := GetColor(937, 943) ; 0xE5FFFF
        if (color == 0xE5FFFF) {
            ; ToolTip, "ok" %color%
            Send, {2}
        } else {
            ; ToolTip, "nok" %color%
        }
        ;; 冰龙吟回内
        color3 := GetColor(973, 940) ; 0xE5FFFF
        if (color3 == 0xFEFDDB) {
            ; ToolTip, "ok" %color3%
            Send, {3}
        } else {
            ; ToolTip, "nok" %color3%
        }
        
    } Until Not getkeystate("XButton2","P")
; SetTimer tooltip -5000
return
