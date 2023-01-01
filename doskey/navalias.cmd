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
