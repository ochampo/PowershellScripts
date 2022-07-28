function MergSort($data)
{
    $midpoint = ($data).Length / 2

    $leftSide = $data[0 .. $midpoint]
    $rightSide = $data[($midpoint+1) .. $data.Length]
    
    
    

}

$testData = @(1,3,5,6,7,8)
MergSort($testData)


