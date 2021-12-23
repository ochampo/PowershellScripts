Install-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate
Get-Command –Module PSWindowsUpdate
Get-WindowsUpdate -AcceptAll -Install -AutoReboot