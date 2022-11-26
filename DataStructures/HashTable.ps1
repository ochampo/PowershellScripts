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
[void] GetMethod($key)
{
    $index = $this.Hash($key)
    if($null -ne $this.DataMap[$index])
    {
        for($i=0;$i -lt ($this.DataMap[$index]).length; $i++ )
        {
             if( $key -eq ($this.DataMap[$index])[$i].Key)
             {
                Write-host "Value is this " + ($this.DataMap[$index])[$i].Value
             }
        }
    }
    else {
        write-host "no values found"
       }
   




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
$myHash.SetMethod('whatever',56)
$myHash.SetMethod('homer',1400)
$myHash.SetMethod('water',100)

$myHash.GetMethod("Dan")
$myHash.GetMethod("bolts")
$myHash.GetMethod("Bolts")
$myHash.GetMethod('whatever')
$myHash.GetMethod('cool')
$myHash.GetMethod('homer')
$myHash.GetMethod('water')


$myHash.PrintTable()