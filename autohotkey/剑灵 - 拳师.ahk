; 示例：https://www.autoahk.com/archives/36209#:~:text=%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%90%AF%E5%8A%A8%E5%BE%AA%E7%8E%AF%EF%BC%8C%E5%86%8D%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%81%9C%E6%AD%A2%E5%BE%AA%E7%8E%AF%EF%BC%88%E7%AC%AC%E4%B8%89%E8%A1%8C%E7%9A%8450%E6%98%AF%E5%BE%AA%E7%8E%AF%E7%9A%84%E9%97%B4%E9%9A%94%E4%B8%BA50%E6%AF%AB%E7%A7%92%EF%BC%89%20F1%3A%3Atoggle,%3A%3D%20%21toggle

; https://www.bilibili.com/video/BV1RZ421h7FH/?vd_source=de9e01f92cb012be11a4822bdfdc74cd

;脚本自检测，如果不是管理员就自动以管理员权限运行自身
if !(A_IsAdmin || InStr(DllCall("GetCommandLine", "str"), ".exe"" /r"))
    RunWait % "*RunAs " (s:=A_IsCompiled ? "" : A_AhkPath " /r ") """" A_ScriptFullPath """" (s ? "" : " /r")

#z::Run https://www.autohotkey.com ; Win+Z

F11::
    MouseGetPos, mouseX, MouseY
    PixelGetColor, color, %mouseX%, %mouseY%, RGB
    StringRight, color, color, 10
    ; tooltip, %mouseX%, %mouseY%颜色是：%color%
    clipboard = (%mouseX%, %mouseY%)=="%color%"
return
XButton1::
    {
        enable :=1
        Loop
        {
            if(!enable)
            {
                break
            }
            send {2}
            sleep 300
            if(!enable)
            {
                break
            }
            send {a down}
            sleep 21
            send {r}
            sleep 50
            send {a up}
            sleep 191
            if(!enable)
            {
                break
            }
            send {r}
            sleep 250
            if(!enable)
            {
                break
            }
            send {d down}
            sleep 51
            send {4}
            sleep 51
            send {d up}
            sleep 91
        }
    }
XButton1 up::
    {
        enable := 0
    }
return
XButton2::
    loop{
        send {s}
        sleep 50
        send {s}
        sleep 250
    }Until Not getkeystate("XButton2","P")
return
GetColor(x,y)
{
    PixelGetColor, color, x, y, RGB
    StringRight color,color,10
return color
}