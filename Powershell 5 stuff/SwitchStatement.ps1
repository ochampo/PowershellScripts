$value = Read-Host("give me a value")
switch($value)
{
    test1 {'you wanted test1'}
    test2 {'you wanted test2'}
    default{("hmmmm didnt think of that value")}
}