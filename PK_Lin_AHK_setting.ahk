/*
   wait to follow links.
http://code.google.com/p/ydict/downloads/list
http://blog.longwin.com.tw/2010/06/y_dictionary_script_2010/
http://www.vim.org/scripts/script.php?script_id=2001

english free audio books
http://etc.usf.edu/lit2go/
 */

dropbox_path = %USERPROFILE%\Dropbox
google_drive_path = %USERPROFILE%\Google Drive
desktop_path = %USERPROFILE%\Desktop
/* vim_path = %USERPROFILE%\Dropbox\2012-10-31_vim\Final\Vim\Vim73\gvim.exe */ 
vim_path = D:\Vim74\Vim\vim74\gvim - original.exe
hi_touch_path= E:\proj - hiTouch_Designer

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
	closeAllWindows()
	Run %path% , , max 
}

{
	^!2::
		run %A_AppData%
		return
		/*
	^!h::MouseMove, -20,0,0,
	^!l::MouseMove, 20,0,0,R
	^!j::MouseMove, 0,20,0,R
	^!k::MouseMove, 0,-20,0,R
	^!a::Send {Click down}
	^!x::Send {Click}
	*/

	^!t::
	Send %theDate%
	return 
	^!w::
	return 
	^!q::
	return 

	^!v::
	openOnePath( vim_path )
	return

	^!d::
	openOnePath( dropbox_path )
	return

	^!s::
	openOnePath( desktop_path )
	return

	^!m::Run C:\Windows\System32\Shutdown.exe -s -t 00
	/* ^!f::Run %windir%\explorer.exe ftp://10.240.34.119/ */
	^!1::Send {Enter}

	^!e::Run E:\
	+^d::Send {delete}
	+^j::Send {Down}
	+^k::Send {Up}
	+^h::Send {Left}
	+^l::Send {Right}
	+^^::Send {home}
	+^$::Send {end}
}

; win key + A, k ,v ,i, b , space, n, c, h
{
#A::
	Run http://www.plus28.com/
		Run http://www.ck101.com/forum.php
		return 
#k:: 
		; learn 
		Run http://runkeeper.com/user/RafaelLin/activity/80900532
		Run http://www.taipeimarathon.org.tw/contest.aspx
		Run https://twitter.com/RafaelLin0310
		Run http://www.pig.tw/CwP/P/P8859.html
		Run https://groups.google.com/group/vim-taiwan/topics
		Run http://playpcesor.blogspot.com/
		Run http://www.seek.com.au/JobSearch?DateRange=31&SearchFrom=quick&Keywords=software+engineer&industry=6281&nation=3000
		;Run http://www.pomodorotechnique.com/
		Run http://www.facebook.com/stock.tw?ref=stream
		return ;
#v:: ; facebook links
	Run http://www.facebook.com/photo.php?fbid=501878476500681&set=a.120420671313132.14164.115411411814058&type=1&relevant_count=1
		Run http://www.facebook.com/idpOPENyourWORLD?ref=stream
		Run http://www.facebook.com/WHV.kowen
		Run http://vim.wikia.com/wiki/Best_Vim_Tips
		Run http://www.vimgolf.com/
		Run http://www.vim.org/scripts/index.php
		return ;

#p::
#sleep::
	MsgBox, 52, closeOPEN, Close All Open Windows?
		IfMsgBox No
		return
		WinGet, ID, List, , , Program Manager
		Loop, %ID%
		{
this_id := id%A_Index%
			 if A_index > 2
				 WinClose, ahk_id %this_id%
		}
	return
		GroupClose, MSIE, A
		return ;
	ifwinexist, ahk_class IEFrame
	{
		loop
		{
			winclose, ahk_class IEFrame
				IfWinNotExist, ahk_class IEFrame
				{
					EXIT
				}
		}
	}

#i:: ; listen website
	Run http://ielts-simon.com/
		Run http://www.synonym.com/
		Run http://earthsky.org/
		Run http://www.npr.org/?refresh=true
		Run http://edition.cnn.com/video/
		Run http://www.bbc.co.uk/worldservice/learningenglish/general/sixminute/
		return ;
#b::
	Run http://www.amazon.com/
		Run http://www.businesstoday.com.tw/v1/index.aspx
		Run http://smart.businessweekly.com.tw/
		return
#space::
		Run http://news.gamme.com.tw/
		Run http://www.techbang.com/
		Run https://www.icloud.com/
		Run http://www.backpackers.com.tw/forum/forumdisplay.php?f=51
		Run https://groups.google.com/forum/?fromgroups#!forum/comp.editors
		Run http://st-threath.blogspot.tw/
		Run http://rate.bot.com.tw/Pages/Static/UIP003.zh-TW.htm
		return ;
#c::Run calc.exe
	return
#h::Run C:\Program Files (x86)\Internet Explorer\iexplore.exe https://citrix.himax.com.tw/ 
		return
#t::Run http://www.backpackers.com.tw/forum/forumdisplay.php?f=179

		return
#x::
		if ( WinExist("ahk_group ExplorerGroup") )
			WinClose,ahk_group ExplorerGroup
				return


}

::btw::bye the way
::lativ::http://www.lativ.com.tw/
::int_ap::E:\proj - hiTouch_Designer\IntegratedAP_v3.1.1\Debug\AP Tool.exe
::oldreg::E:\proj - old_Reg_Tool\HX8526-A Register_20110905\bin\Debug\HX8520-A Register.exe

::kwa::kwang997@gmail.com
::wee::E:\weeklyreport

