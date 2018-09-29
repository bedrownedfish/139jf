Dim WshShell
Set WshShell = CreateObject("WScript.Shell")
Do While True
     WScript.Sleep 1000*90       'µÈ´ý60Ãë
     WshShell.Run "C:\mg\autotrade.bat",0,True
Loop