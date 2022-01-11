function Noting-Fancy {
    [cmdletBinding ()]param (
        [parameter(Mandatory = $true, helpMessage="enter The first two letters of your Lastname and your ID")]
        [ValidatePattern("[a-z][a-z][0-9]")]

        $Mynumber
    )
    "hello"
}


Noting-Fancy -Mynumber "tx1"