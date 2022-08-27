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
    
    $newNode = [Node]::new($value)
    $head = $newNode
    $tail = $newNode
    $length = 1

    [void] PrintList()
    {
        $temp = $this.head
        while($null -ne $temp)
        {
            write-output ($temp.value)
            $temp = $temp.next
        }

    }

}