class HashTable
{
$Size = 7
$DataMap = [object[]]::new($this.Size)

[void] Hash($key)
{
    $myHash = 0
    
    foreach ($letter in $key )
    {
       $myHash =  (($myHash + [byte][char](lett) *23 ) %  $this.DataMap)
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

$myHash.PrintTable()