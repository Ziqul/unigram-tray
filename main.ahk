#NoEnv
#Persistent
#SingleInstance force

global AHK_NOTIFYICON = 0x404
global WM_LBUTTONDBLCLK = 0x203

SendMode Input

OnMessage(AHK_NOTIFYICON, "NotifyIconHandler")

Menu, Tray, NoStandard
Menu, Tray, Icon, %A_ScriptDir%\iconfinder_335_Telegram_logo_4375490_white.ico
Menu, Tray, Tip, Unigram

Menu, Tray, Add, Unigram, UnigramHandler
Menu, Tray, Default, Unigram

Menu, Tray, Add

Menu, Tray, Add, Exit, ExitHandler

Return

NotifyIconHandler(wParam, lParam) {
    if (lParam = WM_LBUTTONDBLCLK) {
        Gosub, UnigramHandler
        Return
    }
}

UnigramHandler:
    Run shell:AppsFolder\38833FF26BA1D.UnigramPreview_g9c9v27vpyspw!App
Return

ExitHandler:
    ExitApp
Return
