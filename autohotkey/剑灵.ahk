; 示例：https://www.autoahk.com/archives/36209#:~:text=%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%90%AF%E5%8A%A8%E5%BE%AA%E7%8E%AF%EF%BC%8C%E5%86%8D%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%81%9C%E6%AD%A2%E5%BE%AA%E7%8E%AF%EF%BC%88%E7%AC%AC%E4%B8%89%E8%A1%8C%E7%9A%8450%E6%98%AF%E5%BE%AA%E7%8E%AF%E7%9A%84%E9%97%B4%E9%9A%94%E4%B8%BA50%E6%AF%AB%E7%A7%92%EF%BC%89%20F1%3A%3Atoggle,%3A%3D%20%21toggle

;脚本自检测，如果不是管理员就自动以管理员权限运行自身
if !(A_IsAdmin || InStr(DllCall("GetCommandLine", "str"), ".exe"" /r"))
    RunWait % "*RunAs " (s:=A_IsCompiled ? "" : A_AhkPath " /r ") """" A_ScriptFullPath """" (s ? "" : " /r")

#z::Run https://www.autohotkey.com ; Win+Z

F11：
MouseGetPos, mouseX, MouseY
PixelGetColor, color, %mouse%, %mouseY%, RGB
StringRight, color, color, 10;
tooltip, %mouseX%, %mouseY%颜色是：%color%
Clipboard = (%mouseX%, %mouseY%)=="%color%"
return

; 按一次打开再按关闭 - 发送F键
F1::toggle := !toggle
F1 Up::Settimer KaiGuan, % toggle=0 ? "Off" : 50
KaiGuan:
    Send f
return

; 按一次打开再按关闭 - 召唤卡刀宏
XButton2::toggle := !toggle
XButton2 Up::Settimer ZhKaDao, % toggle=0 ? "Off" : 50
ZhKaDao:
    loop, 4
    {
        ; Send t
        MouseClick, left
        Sleep, 10
    }
    MouseClick, right
    ; Send y
return
