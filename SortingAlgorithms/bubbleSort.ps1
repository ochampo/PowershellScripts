function bubbleSort($data)
{
 #$count = 0   
for ($i = 0 ; $i -lt $data.Length-1; $i++)
{
    $isSorted = $true
    for ($j = 0 ; $j -lt $data.Length-1  ; $j++)
    {
        
        if($data[$j] -gt $data[$j+1])
        {            
            $temp = $data[$j]
            $data[$j] = $data[$j+1]
            $data[$j+1] = $temp
            $isSorted = $false
        }  
        #Write-Output ("current state data " + $data + " " + $count++)
    }
    if ($isSorted)
    {
     return $data   
    }
}


}

$list1 = @(10,8,5,4,3,2,1,777,12)

$sortedArray = bubbleSort($list1)

write-output ("sorted state 1 " ) 
$sortedArray
