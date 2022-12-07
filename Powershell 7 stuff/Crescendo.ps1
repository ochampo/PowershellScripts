$NewConfiguration = @{
    '$schema' = 'https://aka.ms/PowerShell/Crescendo/Schemas/2021-11'
    Commands = @()
}
$parameters = @{
    Verb = 'Show'
    Noun = 'AzCmAgent'
    OriginalName = "c:/program files/AzureConnectedMachineAgent/azcmagent.exe"
}
$NewConfiguration.Commands += New-CrescendoCommand @parameters
$NewConfiguration | ConvertTo-Json -Depth 3 | Out-File .\AzCmAgent.json