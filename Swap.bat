@if (@CodeSection == @Batch) @then
@echo OFF
color 0D

REM I should make it invert colors as well.
REM uuhhhh maybe some other things too :P
REM reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d E:\photos\image1.bmp /f
REM RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
REM Use %SendKeys% to send keys to the keyboard buffer
REM to kill control panel, just taskkill /IM explorer.exe, it'll be fine maybe
REM "+({F10})" for context menu c:
set SendKeys=CScript //nologo //E:JScript "%~F0"
start "" /B cmd

start control
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}"
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% " "
ping -n 0 -w 1 127.0.0.1 > NUL
%SendKeys% "{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
taskkill /IM explorer.exe
start ms-settings:display
ping -n 3 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% "{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{ENTER}"
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% "{DOWN}{DOWN}{ENTER}"
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{ENTER}"
ping -n 3 -w 1 127.0.0.1 > NUL
start ms-settings:easeofaccess-narrator
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% " "
ping -n 1 -w 1 127.0.0.1 > NUL
taskkill /IM SystemSettings.exe
taskkill /IM wininit.exe /F

goto :EOF
@end

// JScript section don't worry about it :P
var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));