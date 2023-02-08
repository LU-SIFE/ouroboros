@if (@CodeSection == @Batch) @then

@echo off
color 0D

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
start ms-settings:
ping -n 2 -w 1 127.0.0.1 > NUL
%SendKeys% "{TAB}{ENTER}"
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