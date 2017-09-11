## make powershell tab completion work like bash

New versions of PowerShell include PSReadline, which can be used to do this:

Set-PSReadlineKeyHandler -Key Tab -Function Complete
