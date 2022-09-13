class Node
{
    $value
    $next
    $prev
    Node($value)
    {
    $this.value = $Value
    $this.next = $null
    }
}


class Stack
{
    $top
    $height = 0
    Stack($value)
    {
    $node = [Node]::new($value)
    $this.top = $node
    $this.height += 1
    
    }




}