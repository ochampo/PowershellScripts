Class Node
{
    $value
    $next
Node($value)
{
    $this.value = $value
    $this.next = $null
}

  
}

class LinkedList {
    $head
    $tail
    $length = 0
    $pre
    LinkedList([int] $value)
   {
       $node = [Node]::new($value)
       $this.head = $node
       $this.tail = $node
       $this.length = 1 
    }

   PrintList()
    {
        $temp = $this.head
        while( $null -ne $temp.value) 
        {
            Write-Host ($temp.value)
            $temp = $temp.next
        }

        
     }

     append([int] $value)
     {
         $node = [Node]::new($value)
         $this.tail.next = $node
         $this.tail = $node
         $this.length += 1
        
    }

    [int]pop()
    {
        $temp = $this.head
        while($temp.next)
        {
            $this.pre = $temp
            $temp = $temp.next
        }
        
        $this.tail = $this.pre 
        $this.tail.next = $null
        $this.length -= 1
        return $temp.value
    }

    popFirst()
    {
     $temp =  $this.head
     $this.head = $this.head.next
     $temp.next = $null
     $this.length -= 1
    }

    prePend($value)
    {
       $node = [Node]::new($value)
       $node.next =  $this.head
       $this.head = $node
       $this.length += 1
        write-host $node.value
    }

    IsEmptyStack()
    {
        if ($this.length -eq 0 )
        {
            $this.head = new_node
            $this.tail = new_node
        }
    }

      get($index)
      {
        if ($index -lt 0 -or $index -ge $this.length)
        {
            write-host "Out Of range"
        }
      
        else
        {
            $temp = $this.head
            $i=0
            while( $i -lt $index )
            {
            $temp = $temp.next
            $i++
            }

            Write-Host $temp.Value

        }
         
        
      }
}

$myLinkList = [LinkedList]::new(12)
$myLinkList.append(15)
$myLinkList.append(54)
$myLinkList.append(60)
$myLinkList.append(60)
$myLinkList.append(30)
$myLinkList.PrintList()

write-Host "Pop test:"

$myLinkList.pop()
write-Host "NewList:"
$myLinkList.PrintList()
Write-Host "prepend Test"
$myLinkList.prePend(50)
write-Host "NewList:"
$myLinkList.PrintList()
write-host "Pop_first"
$myLinkList.popFirst()
write-Host "NewList:"
$myLinkList.PrintList()
write-host "get"
$myLinkList.get(2)
write-Host "NewList:"
$myLinkList.PrintList()
