::::::::::::::::::::::::::::::::::::::::::::::
:: special folder                           ::
::::::::::::::::::::::::::::::::::::::::::::::
:systempath
@DOSKEY programfiles           =cd /d "%ProgramFiles%"
@DOSKEY programfilesx86        =cd /d "%ProgramFiles% (x86)"
@DOSKEY alldesktop             =cd /d "%SystemDrive%\Users\Public\Desktop"
@DOSKEY alldocuments           =cd /d "%SystemDrive%\Users\Public\Documents"
@DOSKEY allmusic               =cd /d "%SystemDrive%\Users\Public\Music"
@DOSKEY allpictures            =cd /d "%SystemDrive%\Users\Public\Pictures"
@DOSKEY allvideo               =cd /d "%SystemDrive%\Users\Public\Videos"
@DOSKEY windows                =cd /d "%SystemRoot%"
@DOSKEY fonts                  =cd /d "%SystemRoot%\Fonts"
@DOSKEY system                 =cd /d "%SystemRoot%\system32"
@DOSKEY systemx86              =cd /d "%SystemRoot%\SysWOW64"
:systemappdata
@DOSKEY appdata                =cd /d "%APPDATA%"
@DOSKEY quicklaunch            =cd /d "%APPDATA%\Microsoft\Internet Explorer\Quick Launch"
@DOSKEY cookies                =cd /d "%APPDATA%\Microsoft\Windows\Cookies"
@DOSKEY nethood                =cd /d "%APPDATA%\Microsoft\Windows\Network Shortcuts"
@DOSKEY printhood              =cd /d "%APPDATA%\Microsoft\Windows\Printer Shortcuts"
@DOSKEY recent                 =cd /d "%APPDATA%\Microsoft\Windows\Recent"
@DOSKEY sendto                 =cd /d "%APPDATA%\Microsoft\Windows\SendTo"
@DOSKEY userstartmenu          =cd /d "%APPDATA%\Microsoft\Windows\Start Menu"
@DOSKEY userstartmenuprograms  =cd /d "%APPDATA%\Microsoft\Windows\Start Menu\Programs"
@DOSKEY administrativetools    =cd /d "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Administrative Tools"
@DOSKEY startup                =cd /d "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
@DOSKEY templates              =cd /d "%APPDATA%\Microsoft\Windows\Templates"
:alluser
@DOSKEY allappdata             =cd /d "%ALLUSERSPROFILE%"
@DOSKEY startmenu              =cd /d "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu"
@DOSKEY startmenuprograms      =cd /d "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs"
@DOSKEY admintools             =cd /d "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Administrative Tools"
@DOSKEY allstartup             =cd /d "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\Startup"
@DOSKEY alltemplates           =cd /d "%ALLUSERSPROFILE%\Microsoft\Windows\Templates"
:userprofile
@DOSKEY profile                =cd /d "%USERPROFILE%"
@DOSKEY appdata                =cd /d "%USERPROFILE%\AppData\Local"
@DOSKEY cdburning              =cd /d "%USERPROFILE%\AppData\Local\Microsoft\Windows\Burn\Burn"
@DOSKEY history                =cd /d "%USERPROFILE%\AppData\Local\Microsoft\Windows\History"
@DOSKEY temporaryinternetfiles =cd /d "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
@DOSKEY temporary              =cd /d "%USERPROFILE%\AppData\Local\Temp\"
@DOSKEY desktop                =cd /d "%USERPROFILE%\Desktop"
@DOSKEY documents              =cd /d "%USERPROFILE%\Documents"
@DOSKEY downloads              =cd /d "%USERPROFILE%\Downloads"
@DOSKEY favorites              =cd /d "%USERPROFILE%\Favorites"
@DOSKEY music                  =cd /d "%USERPROFILE%\Music"
@DOSKEY pictures               =cd /d "%USERPROFILE%\Pictures"
@DOSKEY video                  =cd /d "%USERPROFILE%\Videos"
::::::::::::::::::::::::::::::::::::::::::::::
:: Personal folder I                        ::
::::::::::::::::::::::::::::::::::::::::::::::
:i
@DOSKEY homes                  =cd /d i:\
@DOSKEY E                      =cd /d i:\E
@DOSKEY pxe                    =cd /d i:\pxe
@DOSKEY varie                  =cd /d i:\varie
@DOSKEY web                    =cd /d i:\web
@DOSKEY downloads              =cd /d i:\downloads
:idocument
@DOSKEY documents              =cd /d i:\Documents
:idocumentpwsh
@DOSKEY pwshhome               =cd /d i:\Documents\powershell
@DOSKEY pwshfunc               =cd /d i:\Documents\powershell\function.d
@DOSKEY pwshsrc                =cd /d i:\Documents\powershell\script
@DOSKEY mydoc                  =cd /d i:\Documents\mydoc
:imoba
@DOSKEY moba                   =cd /d i:\mobaxterm
@DOSKEY mobahome               =cd /d i:\mobaxterm\home
:iprograms
@DOSKEY programs               =cd /d i:\programs
:iprogramstools
@DOSKEY tools                  =cd /d i:\programs\tools
@DOSKEY sysinternal            =cd /d I:\programs\tools\SysinternalsSuite
@DOSKEY installer              =cd /d I:\programs\tools\installer
@DOSKEY portableapps           =cd /d I:\programs\portableapps
:irepo
@DOSKEY repo                   =cd /d i:\repo
@DOSKEY gosetting              =cd /d i:\repo\setting
::::::::::::::::::::::::::::::::::::::::::::::
:: Navigation aliasI                        ::
::::::::::::::::::::::::::::::::::::::::::::::
:navigation
@DOSKEY ls                     =dir /w
@DOSKEY clear                  =cls
@DOSKEY system32               =cd C:\Windows\System32
@DOSKEY ..                     =cd ..\$*
@DOSKEY ...                    =cd ..\..\$*
@DOSKEY ....                   =cd ..\..\..\$*
@DOSKEY .....                  =cd ..\..\..\..\$*
@DOSKEY history                =doskey /history
@DOSKEY kill                   =taskkill /PID $*
@DOSKEY ls                     =dir $*
@DOSKEY mv                     =move $*
@DOSKEY restex                 =taskkill /f /im explorer.exe$T explorer.exe 
@DOSKEY exphere                =explorer.exe . 
@DOSKEY sudo                   =runas /user:administrator $*
@DOSKEY list                   =cmd   /v:on /c "for %%p in ( "!path:;=" "!" ) do @echo %%~p"
@DOSKEY end                    =doskey /history >> %USERPROFILE%\history.txt
@DOSKEY corto                  =cmd  /v:on  /c "set file=$* & for %A in ( !file! ) do @echo %~sA"
::FINEFILE
