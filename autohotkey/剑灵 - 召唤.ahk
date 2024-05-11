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
        ZhaoHuanKaDao()
    } Until Not getkeystate("XButton2","P")
; SetTimer tooltip, -5000
return

XButton1::toggle := !toggle
XButton1 Up::Settimer ZhaoHuan, % toggle=0 ? "Off" : 100
ZhaoHuan:
    ZhaoHuanKaDao()
return

ZhaoHuanKaDao() {
    ; 934, 943
    ; 898 943
    Send, {LButton}{RButton}
    color3 := GetColor(1182, 657)
    if (color3 = 0x9660A7) {
        Send, {f}
        Sleep, 10
    }
    color1 := GetColor(934, 943)
    If (color1 == 0xBBC3CB) {
        ; 摄取
        Send, {2}
        Sleep, 30
    }
    color2 := GetColor(898, 943)
    ; ToolTip, %color2%
    If (color2 == 0x2E1A51) {
        ; 疯狂生长
        Send, {1}
        Sleep, 10
    }
    Send, {LButton}{RButton}
}