#SingleInstance Force
#Include common.ahk

XButton1::toggle := !toggle
XButton1 Up::Settimer QiGong, % toggle=0 ? "Off" : 100
QiGong:
    Send, {c}{f}{LButton}{f}{2}{f}{z}{f}{RButton}{f}
    ; QigongKaDao2()   
return

QigongKaDao2() {
    Send, {LButton}{RButton}
    ;; 莲花指
    ; color := GetColor(977, 1006) ; 0xE5FFFF
    color := GetColor(968, 1004)
    ; if (color == 0x1D2CB6) {
    if (color != 0xFFE9A1) {
        ; Send, {c}
    }

    ; 左右2f循环 
    Send, {f}{LButton}{f}{2}{f}{z}{f}{RButton}{f}

    ; 流星指触发秘功牌
    ; color := GetColor(1023,1006)
    color := GetColor(1014,1000)
    ToolTip, "%color%"
    if (color != 0x4A9BCE) {
        ; Send, {v}
    }
    
}