Set IRP = getobject("winmgmts:\\.\root\default:Systemrestore")
strDescription = InputBox("Restore point description: ","My Restore Point")
MYRP = IRP.createrestorepoint (strDescription, 0, 100)