dropbox_path       = %USERPROFILE%\Dropbox
google_drive_path  = %USERPROFILE%\"Google Drive"
desktop_path       = %USERPROFILE%\Desktop
vim_path           = %USERPROFILE%\Dropbox\2012-10-31_vim\Vim74\Vim\vim74\gvim.exe
FS_path            = %USERPROFILE%\Dropbox\Software\FSCapture.exe
weekly_report_path = "E:\WeeklyReport\"
hi_touch_path      = "E:\proj_hiTouch_Designer\hi_touch\hi_git_repository\"
release_path       = "E:\proj_hiTouch_Designer\Release"
touch_path         = "ftp://10.240.42.80/"
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
	; ctrl + alt for mouse ;^代表Ctrl鍵 ;! 代表Alt鍵
	^!a::Send {Click down}
	^!x::Send {Click}

	+^d::Send {delete}

	^!j::Send {Down}
	^!k::Send {Up}
	^!h::Send {Left}
	^!l::Send {Right}
	^!^::Send {home}
	+^$::Send {end}
}
; ctrl + alt 
{
	^!e::Run E:\ return  
	^!2:: run %A_AppData%
	^!t:: Send %theDate% 
	^!w:: openOnePath( weekly_report_path ) return ;
	^!q:: openOnePath( hi_touch_path ) return 
	^!v:: openOnePath( vim_path ) return
	^!d:: openOnePath( dropbox_path ) return
	^!g:: openOnePath( google_drive_path ) return
	^!s:: openOnePath( desktop_path ) return
	^!r:: openOnePath( release_path ) return ;


	^!m::Run C:\Windows\System32\Shutdown.exe -s -t 00
	; ^!f:: openOnePath( touch_path )
	 ;^!f::Run %windir%\explorer.exe ftp://10.240.34.119/
	 ;^!f::Run %windir%\explorer.exe ftp://10.240.42.80/
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
#h::Run C:\Program Files (x86)\Internet Explorer\iexplore.exe https://citrix.himax.com.tw/ 
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
::hi_touch::E:\proj_hiTouch_Designer\hi_touch\hi_git_repository\
;::hid_fx2::E:\proj_hiTouch_Designer\hid_fx2 - normal\
::hid_fx2::E:\mycode\hid_fx2 - normal
;::common_fx2::E:\proj_hiTouch_Designer\common_fx2\2013-10-14_SVN_commonFX2\
::common_fx2::E:\mycode\common_fx2\2013-10-14_SVN_commonFX2\
::driver_::C:\Users\Pei-Kuan\Dropbox\code\driver
::music::E:\private\tmpMusic

::kwa::kwang997@gmail.com
::D122::D122026495
::qet::qetyrw
::wee::E:\weeklyreport
::dropbox::%USERPROFILE%\Dropbox
::dl_::E:\DownloadFiles
::ftp_::ftp://10.240.34.88/
::sl_::E:\Software
::vim_::C:\Users\Pei-Kuan\Dropbox\2012-10-31_vim\Vim74\Vim\vim74
::bcb_::E:\myCode\BCB-siliconlab-AP\HIDKomponente\DEMOS\BCB\ReadWriteDemo_2014-02-05
