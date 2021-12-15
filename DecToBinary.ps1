$test = 65
$stringArr = @()


 while($test -gt 0)
 {
    
    $remainderChecker = [double] $test / 2
    $test = [Math]::floor($test / 2)
   
    #$test

    
    if (($remainderChecker - ([int] $remainderChecker)) -ne 0 )
    {
        
     $stringArr+="1"
    # ($remainderChecker - ([int] $remainderChecker))
     
    } 
   

    else 
     {
        $stringArr+="0"
        #$test
     }
 
  
}

[array]::Reverse($stringArr)


$stringArr -join ""