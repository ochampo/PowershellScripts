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
            break;
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
    [void] Prepend($value)
       {
        $node = [Node]::new($value)
       if($this.length -eq 0)
       { 
       $this.head = $node
       $this.tail = $node
       $this.length = 1
       }
       else 
       { 
        $node.next = $this.head
        $this.head.prev = $node
        $this.head = $node
       }
       $this.length += 1
       }


       [void] popFirst()
       {
        $this.length
        if ($this.length -eq 0) {
          Write-Host  "unable to pop empty list"
          break;
        }
        $temp = $this.head
        if($this.length -eq 1  )
        {
            
            $this.head = $null
            $this.tail = $null
            $this.length -= 1      

        }        
        else {
             
            $this.head = $this.head.next
            $this.head.prev = $null
            $temp.next = $null
            $this.length -= 1    

        }
        
       
    }

   [Node] Get($index)
   {
    $temp = $this.head
    if($index -lt 0 -or $index -gt $this.length)
    {
        write-host "index out of range"
        return $null
    }
    if($index -lt $this.length/2)
    {
        
        for($i=0;$i -lt $index; $i++)
        {
            $temp = $temp.next
        }
    }
    else{
        
        $temp = $this.tail
        $i = $this.Length-1
        while( $i -ne $index)
        {   $i--;
            $temp = $temp.prev
        }
        
    }

    #  if length is 7
    # user wants index 4
    #assign temp to tail and go to prev node
    #if the length = index than stop, because that's the index we want. 
    # -1 6 
    # -1 5
    # -1 4 

    return $temp

   }
   [void] set($index, $value)
   {
    

    if($this.length -lt $index)
    {
       write-host "index out of range consider append method"
    }
    else 
    {
       [node] $nodeInfo = $this.Get($index)

      $nodeInfo.value = $value
    }

   }

   [void] insert($index,$value)
   {
    if($index -lt 0 -or $index -gt $this.length)
    {
        write-host "index out of range"
        
    }
    if($index -eq 0)
    {
        $this.Prepend($value)
    }
    if($index -eq $this.length)
    {
        $this.append($value)
    }
    else 
    {
     $node = [Node]::new($value)
     $before = $this.Get($index-1)
     $after = $before.next
   

    $node.prev = $before
    $node.next = $after
    
    $before.next = $node
    $after.prev = $node

    $this.length +=1

    }


   }


}
$doublyLinkedList = [DoublyLinkedList]::new(0)
$doublyLinkedList.append(1)
$doublyLinkedList.append(2)
$doublyLinkedList.append(3)
$doublyLinkedList.append(4)
$doublyLinkedList.append(5)
$doublyLinkedList.append(6)
$doublyLinkedList.append(7)
$doublyLinkedList.append(8)
# $doublyLinkedList.pop()
# $doublyLinkedList.popFirst()

$doublyLinkedList.Get(0)
$doublyLinkedList.Get(1)
$doublyLinkedList.Get(2)
$doublyLinkedList.Get(3)
$doublyLinkedList.Get(4)
$doublyLinkedList.Get(5)


$doublyLinkedList.Get(6)
$doublyLinkedList.Get(7)
$doublyLinkedList.Get(8)

$doublyLinkedList.Set(8, -8)
$doublyLinkedList.Set(7, -7)
$doublyLinkedList.Set(6, -6)
$doublyLinkedList.Set(5, -5)
$doublyLinkedList.Set(4, -4)
$doublyLinkedList.Set(3, -3)
$doublyLinkedList.Set(2, -2)
$doublyLinkedList.Set(1, -1)
$doublyLinkedList.Set(0, 0)


$doublyLinkedList.insert(2,10)



$doublyLinkedList.PrintList()