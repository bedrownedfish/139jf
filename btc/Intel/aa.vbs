Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
Do While True
     WScript.Sleep 1000*30       'µÈ´ý60Ãë
     WshShell.Run "C:\mg\cron.bat",0,True
Loop