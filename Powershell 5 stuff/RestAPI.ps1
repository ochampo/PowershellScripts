Invoke-WebRequest -Method Get -Uri "http://trainingxyz.com/api/posts/all" | Select-Object -ExpandProperty Content | convertFrom-Json | Format-Table


Invoke-RestMethod -Method Get -Uri http://trainingxyz.com/api/posts/all |Format-Table
Invoke-RestMethod -Method Get -Uri http://trainingxyz.com/api/Users/all |Format-Table