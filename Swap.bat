@if (@CodeSection == @Batch) @then

@echo OFF
color 0D

rem I should make it invert colors as well.
rem uuhhhh maybe some other things too :P
rem reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d E:\photos\image1.bmp /f
rem RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
rem Use %SendKeys% to send keys to the keyboard buffer
set SendKeys=CScript //nologo //E:JScript "%~F0"

rem Start the other program in the same Window
start "" /B cmd

%SendKeys% "control{ENTER}"
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}"
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% " "
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
start ms-settings:display
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% "{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{DOWN}{ENTER}"
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{ENTER}"
ping -n 1 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{TAB}{ENTER}"
ping -n 0 -w 1 127.0.0.1 > NUL
%SendKeys% "{DOWN}{DOWN}{ENTER}"
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{ENTER}"

goto :EOF
@end

// JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));