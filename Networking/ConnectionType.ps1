enum ConnectioType {
    TCP
    UDP
}


$userInput = Read-Host -Prompt "What type of connection is it?"

if($userInput -eq "TCP")
{
    write-host ([ConnectioType]::TCP)
}