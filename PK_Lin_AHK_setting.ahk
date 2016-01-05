dropbox_path = %USERPROFILE%\Dropbox
google_drive_path = %USERPROFILE%\Google Drive
desktop_path = %USERPROFILE%\Desktop
vim_path = "C:\Users\rlin\bin\vim74\gvim.exe"

GroupAdd,ExplorerGroup, ahk_class CabinetWClass
GroupAdd,ExplorerGroup, ahk_class ExploreWClass

myCriteria= google
SetTitleMatchMode, 2
DetectHiddenWindows, On

FormatTime, theDate,, yyyy-MM-dd
    FormatTime, current_time, %A_Now%, yyyy-MM-dd_HH-mm
closeAllWindows()
{
    if ( WinExist("ahk_group ExplorerGroup") )
        WinClose,ahk_group ExplorerGroup
}
openOnePath( path )
{
    ;closeAllWindows()
    Run %path%
        ;Run, totalcmd  %path%
        ;Run, %comspec% /c totalcmd /O /T %path% , , max
        ;Run, %comspec% /c TOTALCMD64 /O /T %path% , , max
}

{
    ^!a::Send {Click down}
    ^!x::Send {Click}

    ; shift + ctrl 
    +^d::Send {delete}

    ; alt + ctrl 
    ^!j::Send {Down}
    ^!k::Send {Up}
    ^!h::Send {Left}
    ^!l::Send {Right}
    ^!^::Send {home}
    +^$::Send {end}
}
; ctrl + alt 
{
        ^!2:: run %A_AppData% ;C:\Users\rlin\AppData\Roaming
        ^!t:: Send %theDate% 
        ^!w:: openOnePath( weekly_report_path ) return ;
        ^!v:: openOnePath( vim_path ) return
        ^!d:: openOnePath( dropbox_path ) return
        ^!g:: openOnePath( google_drive_path ) return
        ^!s:: openOnePath( desktop_path ) return
        ^!r:: openOnePath( release_path ) return ;
        ^!m::Run C:\Windows\System32\Shutdown.exe -s -t 00
        ^!1::Send {Enter}
}

; win key + A, k ,v ,i, b , space, n, c, h
{
#A::
    Run http://www.plus28.com/
        Run http://www.ck101.com/forum.php
        return 

#j::
        Run http://www.seek.com.au/
        return
#k:: 
        ; learn 
        Run https://drive.google.com/keep/
        Run https://twitter.com/RafaelLin0310
        Run https://groups.google.com/group/vim-taiwan/topics
        Run http://playpcesor.blogspot.com/
        Run http://www.seek.com.au/JobSearch?DateRange=31&SearchFrom=quick&Keywords=software+engineer&industry=6281&nation=3000
        Run http://www.facebook.com/stock.tw?ref=stream
        return ;

#i:: ; listen website
    Run http://ielts-simon.com/
        Run http://translate.google.com/
        return ;
#b::  run http://ascii-iicsa.blogspot.tw/2010/08/enum.html
    return ;
#space::
    Run https://lift.do/plans
        Run http://www.abc.net.au/radio/listen-online/
        Run http://voicetube.tw/
        Run http://www.thenewslens.com/
        Run http://news.gamme.com.tw/
        Run https://groups.google.com/forum/?fromgroups#!forum/comp.editors
        Run http://st-threath.blogspot.tw/
        return ;
#h::
    return
#t::Run http://www.backpackers.com.tw/forum/forumdisplay.php?f=179
        return
#x::
        ;closeAllWindows()
        if ( WinExist("ahk_group ExplorerGroup") )
            WinClose,ahk_group ExplorerGroup
                return

#m::
                DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
                return 
}

::btw::bye the way
::lativ::http://www.lativ.com.tw/
::kwa::kwang997@gmail.com
::tha::Thank you \nRafael Lin
