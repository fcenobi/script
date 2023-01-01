@if (@X)==(@Y) @end /****** silent line that start jscript comment ******

@echo off
::::::::::::::::::::::::::::::::::::
:::       Compile the script    ::::
::::::::::::::::::::::::::::::::::::
setlocal
if exist "%~n0.exe" goto :skip_compilation

set "frm=%SystemRoot%\Microsoft.NET\Framework\"
:: searching the latest installed .net framework
for /f "tokens=* delims=" %%v in ('dir /b /s /a:d /o:-n "%SystemRoot%\Microsoft.NET\Framework\v*"') do (
    if exist "%%v\jsc.exe" (
        rem :: the javascript.net compiler
        set "jsc=%%~dpsnfxv\jsc.exe"
        goto :break_loop
    )
)
echo jsc.exe not found && exit /b 0
:break_loop


call %jsc% /nologo /out:"%~n0.exe" "%~dpsfnx0"
::::::::::::::::::::::::::::::::::::
:::       End of compilation    ::::
::::::::::::::::::::::::::::::::::::
:skip_compilation

"%~n0.exe"

exit /b 0


****** End of JScript comment ******/
import System;
import System.IO;

var dt=DateTime.Now;
Console.WriteLine(dt.ToString("yyyyMMddhhmmss"));