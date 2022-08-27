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
}

}


class DoublyLinkedList{
    $head
    $tail
    $length = 0
    
    DoublyLinkedList([int] $value)
   {
       $node = [Node]::new($value)
       $this.head = $node
       $this.tail = $node
       $this.length = 1 
    }
    
    [void] PrintList()
    {
        $temp = $this.head
        while($null -ne $temp)
        {
            write-host $temp.value
            $temp = $temp.next
        }

    }

    [void]append($value)
    {
        $node = [Node]::new($value)
        if($null -eq $this.head)
        {
            $this.head = $node
            $this.tail = $node
        }
        else 
        {
            $this.tail.next = $node
            $node.prev = $this.tail
            $this.tail = $node
        }

        $this.length += 1
    }

}

$doublyLinkedList = [DoublyLinkedList]::new(10)
$doublyLinkedList.append(11)

$doublyLinkedList.PrintList()