function MergSort($data)
{
    if($data.Length -gt 1 )
    {
    $midpoint = ($data).Length / 2
    $leftSide = $data[0 .. $midpoint]
    $rightSide = $data[($midpoint+1) .. $data.Length]


    MergSort($leftSide)
    MergSort($rightSide)
    }

$i = 0

$j = 0
 
$k = 0

while ($i -lt $leftSide -and $j -lt $rightSide.Length)
{




}
    
    
    

}

$testData = @(1,3,5,6,7,8)
MergSort($testData)


