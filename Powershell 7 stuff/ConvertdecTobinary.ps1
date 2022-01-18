$decValue = 55555555
$stringArr = @()
while($test -gt 0)
 {  
    $remainderChecker = [double] $decValue / 2
    $decValue = [Math]::floor($test / 2)
    $stringArrOfBinary += ($remainderChecker - ([int] $remainderChecker)) -ne 0  ?  "1"  : "0"
}
[array]::Reverse($stringArr)
$stringArr -join ""
