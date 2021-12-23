$binaryInput = '1111111110'.ToCharArray()
[array]::Reverse($binaryInput)


converstion($binaryInput)
function converstion ($binaryInput) {

    for( $i= 0 ; $i -lt $binaryInput.Length; $i++)
    {
        
        if($binaryInput[$i] -eq "1")
        {
         
         $temp = [Math]::Pow(2,$i)
         
        }
        else {
        
        }
        
        $BinaryValue = $BinaryValue + $temp
        $temp = 0

    }

    $BinaryValue

}

