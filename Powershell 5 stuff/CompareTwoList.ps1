$List1 = ("
test
abcde
abb
cdef
what" -split("\n")).Trim()
$List2 =
("test5
who
what
abcde
abb
cdef
what" -split("\n")).Trim()
$List = @{}
$List2notOnkList1 =  [System.Collections.Generic.List[String]]@() 
$matchingValues =  [System.Collections.Generic.List[String]]@() 
for($i=0; $i -lt $List1.Length; $i++ )
{
    $List[$List1[$i]] = $true
}
for($i=0; $i -lt $List2.Length; $i++ )
{
    if($null -eq  $List[$List2[$i]])
    {
        $List2notOnkList1.Add($List2[$i])
    }
    elseif($true -eq  $List[$List2[$i]])
    {
      $matchingValues.Add($List2[$i])
    }
}
Write-host "total Matching Values"  $matchingValues.Count
write-host "Requester IPV6 that are not on Network List"
$List2notOnkList1