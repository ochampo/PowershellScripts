function Test-MrParameter {

    param (
        $ComputerName
    )

    Write-Output $ComputerName

}


Test-MrParameter   -ComputerName "Localhost"