#SingleInstance Force
#Include common.ahk

XButton1::toggle := !toggle
XButton1 Up::Settimer QiGong, % toggle=0 ? "Off" : 100
QiGong:
    Send, {c}{2}{LButton}{f}{RButton}{f}{x}{z}{3}
    ; Send, {f}{2}{LButton}{2}{2}{RButton}{2}{2}
    ; QigongKaDao2()   
    
    ; SendKeyWithColor(897, 1002, "0x4D9DDB", "z")  ; 星星之火
    ; SendKeyWithColor(897, 1002, "0xCCCEFF", "z")  ; 破冰
    ; SendKeyWithColor(984, 997, "0x3570B0", "c")  ; 莲花指
    ; SendKeyWithColor(1025, 1004, "0x5FC9EF", "v")  ; 流星指
    ; SendKeyWithColor(942, 1010, "0x9CFAFF", "x")  ; 火莲掌
    ; SendKeyWithColor(975, 938, "0xEEC98F", "3")  ; 冰龙吟
    ; color := GetColor(975, 938)
    ; ToolTip, "%color%"
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