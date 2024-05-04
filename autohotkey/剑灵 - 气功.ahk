; 示例：https://www.autoahk.com/archives/36209#:~:text=%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%90%AF%E5%8A%A8%E5%BE%AA%E7%8E%AF%EF%BC%8C%E5%86%8D%E6%8C%89%E4%B8%80%E4%B8%8B%E4%B8%BA%E5%81%9C%E6%AD%A2%E5%BE%AA%E7%8E%AF%EF%BC%88%E7%AC%AC%E4%B8%89%E8%A1%8C%E7%9A%8450%E6%98%AF%E5%BE%AA%E7%8E%AF%E7%9A%84%E9%97%B4%E9%9A%94%E4%B8%BA50%E6%AF%AB%E7%A7%92%EF%BC%89%20F1%3A%3Atoggle,%3A%3D%20%21toggle
#SingleInstance Force
;脚本自检测，如果不是管理员就自动以管理员权限运行自身
; if !(A_IsAdmin || InStr(DllCall("GetCommandLine", "str"), ".exe"" /r"))
; RunWait % "*RunAs " (s:=A_IsCompiled ? "" : A_AhkPath " /r ") """" A_ScriptFullPath """" (s ? "" : " /r")

; #z::Run https://www.autohotkey.com ; Win+Z

;以下功能只在剑灵窗口下可以使用（ahk_class LaunchUnrealUWindowsClient代表剑灵窗口） 
!F11::
    ;F11是热键，按F11触发下面的功能 
    MouseGetPos, mouseX, mouseY 
    ;获取鼠标的横坐标和纵坐标赋值给mouseX和mouseY 
    PixelGetColor, color, %mouseX%, %mouseY%, Slow  
    ;获取横坐标和纵坐标（即mouseX和mouseY）的颜色值并赋值给color 
    clipboard = (%mouseX%,%mouseY%)=="%color%" 
    ;复制（方便粘贴数据） mouseX,mouseY==color   
    Tooltip, %mouseX% %mouseY%: %color%
    SetTimer, RemoveToolTip, -5000
return ;结束

; 按一次打开再按关闭 - 发送F键
F1::toggle := !toggle
F1 Up::Settimer KaiGuan, % toggle=0 ? "Off" : 50
KaiGuan:
    Send f
return

; (975,1002)=="0x560404"

; (975,1005)=="0x7B1509"
; c - LButton - RButton - 2 - f
XButton2::
    Loop {
        PixelGetColor, color, 976, 1003, RGB 
        ToolTip, "color" %color%
        ; 莲花指先挂灼伤 (976,1003)=="0x181967"
        if (color == "0x181967") { 
            Send, {c}   
        }
        Sleep, 50
        ; 左右攒并炎玉
        Send {LButton}{RButton}
        Sleep, 50
        Send, {2}
        Sleep, 50
        ;  (974,1000)=="0x466FE2"
    } 
    Until Not getkeystate("XButton2","P")
    SetTimer, RemoveToolTip, -5000
Return


RemoveToolTip:
    ToolTip
return

GetColor(x,y)
{
    PixelGetColor, color, x, y, RGB
    ; StringRight color, color, 10
return color
}