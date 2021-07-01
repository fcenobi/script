@if (@CodeSection == @Batch) @then
@ECHO off
set SendKeys=CScript //nologo //E:JScript "%~F0"
cls
color 0a
:start
ECHO.
ECHO Telnet to remote IP Address
ECHO 1. NETVN.SW01 	remote_ip_01
ECHO 2. NETVN.SW02 	remote_ip_02
ECHO 3. NETVN.SW03 	remote_ip_03
ECHO 4. Exit

set choice=
set /p choice=Enter your choice :
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto con1
if '%choice%'=='2' goto con2
if '%choice%'=='3' goto con3
if '%choice%'=='4' goto end
ECHO.

:con1
start "" /B cmd
timeout /t 1 /nobreak >nul
%SendKeys% "telnet 10.11.4.187{Enter}"
%SendKeys% "username{ENTER}"
%SendKeys% "password{ENTER}"
goto :EOF

:con2
start "" /B cmd
timeout /t 1 /nobreak >nul
%SendKeys% "telnet remote_ip_02{Enter}"
%SendKeys% "password{ENTER}"
goto :EOF

:con3
start "" /B cmd
timeout /t 1 /nobreak >nul
%SendKeys% "telnet remote_ip_03{Enter}"
%SendKeys% "username{ENTER}"
%SendKeys% "password{ENTER}"
goto :EOF

@end

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
