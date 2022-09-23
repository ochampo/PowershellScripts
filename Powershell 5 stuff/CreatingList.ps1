

$list = [System.Collections.Generic.List[int]]@() 

for($i = 0; $i -lt 10; $i++ )
{
$list.Add((Get-Random -Maximum 100))
}


$list
