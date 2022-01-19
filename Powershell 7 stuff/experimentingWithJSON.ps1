systeminfo /fo csv | ConvertFrom-Csv | ConvertTo-Json | Out-File "C:\Powershell_OutPut\danTest.json"

