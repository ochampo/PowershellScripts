$logNames = 'Security','Application','System','Windows PowerShell','Microsoft-Windows-Store/Operational'

$logEntries = $logNames | ForEach-Object -Parallel {
    Get-WinEvent -LogName $_ -MaxEvents 10000
} -ThrottleLimit 5

$logEntries.Count

$x = 0
$y = 0

$x -eq $y ? "true" : "false"


Write-Output 'First' && Write-Output 'Second'