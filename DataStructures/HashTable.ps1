class HashTable
{
$Size = 7
$DataMap = ,$null * 7


[int] Hash($key)
{
    $myHash = 0
    
    foreach ($letter in $key.ToCharArray())
    {
     $letter
     $myHash =  (($myHash + ([byte][char]($letter)) *23 ) %  $this.DataMap.Count)
    }
    return  $myHash
}
[void] SetMethod($key,$value)
{
    
    $index = $this.Hash($key)
    if($null -eq $this.DataMap[$index])
    {
        $this.DataMap[$index] = @()
    }
    $this.DataMap[$index] += [pscustomobject]@{Key=$key;Value=$value}

}

[void] PrintTable()
{
    
    for($i =0; $i -lt $this.DataMap.length; $i++)
    {
        Write-Host $i  ":" $this.DataMap[$i] 
    }
}

}


$myHash = [HashTable]::new()
$myHash.SetMethod('Dan',11)
$myHash.SetMethod('data',110)
$myHash.SetMethod('bolts',1400)
$myHash.SetMethod('lumber',100)


$myHash.PrintTable()