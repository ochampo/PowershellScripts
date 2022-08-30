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
    [void] pop()
    {
        if($this.length -eq 0 )
        {
            Write-host "empty Linked List "
        }
        $temp = $this.tail
        if($this.length -eq 1 )
        {
            Write-host ($temp.value.ToString() + " popping this value")
            $this.head = $null
            $this.tail = $null
            
        }
        else 
        {
         Write-host ($temp.value.ToString() + " popping this value")          
         $this.tail = $this.tail.prev
         $temp.prev.next = $null
         $this.length -= 1
         
        }
    }

}

$doublyLinkedList = [DoublyLinkedList]::new(10)
$doublyLinkedList.append(11)
$doublyLinkedList.append(20)
$doublyLinkedList.pop()

$doublyLinkedList.PrintList()