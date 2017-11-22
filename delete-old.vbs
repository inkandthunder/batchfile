Dim Fso
Dim Directory
Dim Modified
Dim Files
Set Fso = CreateObject("Scripting.FileSystemObject")
Set Directory = Fso.GetFolder("C:\JBOSS\JBOSS307\server\oms\log")
Set Files = Directory.Files
For Each Modified in Files
If DateDiff("D", Modified.DateLastModified, Now) > 10 Then Modified.Delete
Next