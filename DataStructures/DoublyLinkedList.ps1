Class Node
{
    $value
    $next
    $prev
Node($value)
{
    $this.value = $value
    $this.next = $null
    $this.prev = $null
    $this.Length = 1
}

}

class DoublyLinkedList{

    [psobject] append([int] $value)
    {
       $node = [Node]::new($value)
       $status = $this.IsEmpty($node)    
       if( $status -eq $false)
        {        
       
        $this.tail.next = $node
        $this.tail = $node
        $this.length += 1
        }
       return $node
   }

}