function Get-InTrouble{

[CmdletBinding(SupportsShouldProcess)] param()

get-aduser -Filter {name -eq "bob smith"} | Remove-ADUser 
}
function Get-InTrouble2{

    [CmdletBinding(SupportsShouldProcess)] param()
    
    Get-Service | Stop-Service
    }
    

Get-InTrouble -WhatIf 

Get-InTrouble2 -Confirm