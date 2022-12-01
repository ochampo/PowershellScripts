$list = [System.Collections.Generic.List[System.Object]]@()
$logNames = 'Application','System','Windows PowerShell','Microsoft-Windows-Store/Operational'

  $list.Add( ($logNames | ForEach-Object -Parallel {
    Get-WinEvent -LogName $_ -MaxEvents 10000
} -ThrottleLimit 5) )

$logEntries.Count

$logEntries += $logNames | ForEach-Object -Parallel {
    Get-WinEvent -LogName $_ -MaxEvents 100000
} -ThrottleLimit 5

$x = 0
$y = 0

$x -eq $y ? "true" : "false"


Write-Output 'First' && Write-Output 'Second'





$arr = 1..100000
$arr | foreach-Object -Parallel { 
  $_ 
  
} -ThrottleLimit 8

