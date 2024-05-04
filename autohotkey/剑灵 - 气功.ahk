; #SingleInstance Force
#Include "common.ahk"

; 左键
XButton2::
{
    Loop 
    {
        ; 左右攒并炎玉
        color := PixelGetColor(975, 1001)
        ; ToolTip color "fuck you"
        ; 莲花指
        if (color == 0xBA4724) {
            ; ToolTip "fuck you yyyy" color
            Send "{c}"
        }
        Sleep 50
        MouseClick "left" 
        Sleep 50
        MouseClick "right" 
        ; 亮了就按
        color := PixelGetColor(936, 940)
        if (color != 0X74747) {
            tooltip "fuck yes" color
            Send "{2}"
        } else {
            tooltip "fuck no" color
        }
        
        ; 双龙破
        Send "{f}"
        Sleep 50
        Send "{LButton}{RButton}"
        Sleep 50
        Send "{3}{f}"
        ; Sleep, 50
        ; Send, {2 4}
        ; Sleep, 50
        ; tooltip
    } Until Not getkeystate("XButton2","P")
    SetTimer tooltip -5000
}
