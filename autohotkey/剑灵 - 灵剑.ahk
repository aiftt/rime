; 示例：https://www.autoahk.com/archives/36209#:~:text=%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%90%AF%E5%8A%A8%E5%BE%AA%E7%8E%AF%EF%BC%8C%E5%86%8D%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%81%9C%E6%AD%A2%E5%BE%AA%E7%8E%AF%EF%BC%88%E7%AC%AC%E4%B8%89%E8%A1%8C%E7%9A%8450%E6%98%AF%E5%BE%AA%E7%8E%AF%E7%9A%84%E9%97%B4%E9%9A%94%E4%B8%BA50%E6%AF%AB%E7%A7%92%EF%BC%89%20F1%3A%3Atoggle,%3A%3D%20%21toggle
#SingleInstance Force
;脚本自检测，如果不是管理员就自动以管理员权限运行自身
; if !(A_IsAdmin || InStr(DllCall("GetCommandLine", "str"), ".exe"" /r"))
; RunWait % "*RunAs " (s:=A_IsCompiled ? "" : A_AhkPath " /r ") """" A_ScriptFullPath """" (s ? "" : " /r")

; #z::Run https://www.autohotkey.com ; Win+Z

;以下功能只在剑灵窗口下可以使用（ahk_class LaunchUnrealUWindowsClient代表剑灵窗口） 
F11::
    ;F11是热键，按F11触发下面的功能 
    MouseGetPos, mouseX, mouseY 
    ;获取鼠标的横坐标和纵坐标赋值给mouseX和mouseY 
    PixelGetColor, color, %mouseX%, %mouseY%, RGB 
    ;获取横坐标和纵坐标（即mouseX和mouseY）的颜色值并赋值给color 
    clipboard = (%mouseX%,%mouseY%)=="%color%" 
    ;复制（方便粘贴数据） mouseX,mouseY==color   
    Tooltip, %mouseX% %mouseY%: %color%
    SetTimer, RemoveToolTip, -5000
return ;结束

; (1079,918)=="0x3892BD" 1079 (1078,915)=="0x3C9BC4"
; (208, 768)=="0x535A57" (208, 768)=="0x535A57" (1078, 913)=="0x1A1E1C"
XButton2::
    loop
    {
        Send {LButton 2}{c}
        Sleep 50
        Send {q}
        Sleep, 50
        Send {f}
        Sleep, 50
        Send {c}{LButton}
        Sleep, 50
        Send {1}
        Sleep, 50
        Send {f 2}
    }
    Until Not getkeystate("XButton2","P")
return

XButton1::
    loop
    {
        Send {e}
        Sleep, 50
        Send {RButton, 5}
        Sleep, 50
        Send {f}
        Sleep, 50
        Send {LButton 4}
        Sleep, 50
    }
    Until Not getkeystate("XButton1","P")
return

RemoveToolTip:
    ToolTip
return

GetColor(x,y)
{
    PixelGetColor, color, x, y, RGB
    ; StringRight color, color, 10
return color
}