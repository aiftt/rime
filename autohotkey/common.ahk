; 示例：https://www.autoahk.com/archives/36209#:~:text=%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%90%AF%E5%8A%A8%E5%BE%AA%E7%8E%AF%EF%BC%8C%E5%86%8D%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%81%9C%E6%AD%A2%E5%BE%AA%E7%8E%AF%EF%BC%88%E7%AC%AC%E4%B8%89%E8%A1%8C%E7%9A%8450%E6%98%AF%E5%BE%AA%E7%8E%AF%E7%9A%84%E9%97%B4%E9%9A%94%E4%B8%BA50%E6%AF%AB%E7%A7%92%EF%BC%89%20F1%3A%3Atoggle,%3A%3D%20%21toggle
#SingleInstance Force

F1::toggle := !toggle
F1 Up::Settimer KaiGuan, % toggle=0 ? "Off" : 100
KaiGuan:
Send, {f}
return

GetColor(x, y)
{

    CoordMode, Pixel, Screen 
    PixelGetColor, color, x, y, fast

    StringRight color, color, 10 ;

    return color

}
; ; 按一次打开再按关闭 - 发送F键
; F1::toggle := !toggle
; F1 Up::Settimer KaiGuan, % toggle=0 ? "Off" : 50
; KaiGuan:
;     Send f
; return
