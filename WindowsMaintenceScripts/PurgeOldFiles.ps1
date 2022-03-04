$currentDate = Get-Date
$numberOFMothsBack = 6
$PathForDeletion = "C:\Windows\Temp"
$FileToPurge = Get-ChildItem –Path $PathForDeletion  | Where-Object {$_.LastWriteTime -lt $currentDate.AddMonths(-$numberOFMothsBack)} 
$FileToPurge
$FileToPurge | Remove-Item 