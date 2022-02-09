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

    pop()
    {

        $temp = $this.head
        while($temp.next)
        {
            $this.pre = $temp
            $temp = $temp.next
        }
        
        $this.tail = $this.pre 
        $this.tail.next = $null
        Write-Host $temp.value

    }
    
}

$myLinkList = [LinkedList]::new(12)
$myLinkList.append(15)
$myLinkList.append(54)
$myLinkList.append(60)
$myLinkList.PrintList()
$myLinkList.PrintList()

write-Host "Pop:"

$myLinkList.pop()

$myLinkList.PrintList()