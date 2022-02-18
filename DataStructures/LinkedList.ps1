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
    
    LinkedList([int] $value)
   {
       $node = [Node]::new($value)
       $this.head = $node
       $this.tail = $node
       $this.length = 1 
    }
    
     [bool] IsEmpty($node)
    {
        if ($this.length -eq 0 -or $null-eq $this.head )
        {
            $this.head = $node
            $this.tail = $node
            $this.length += 1
            return $true
        }

        else
        { 
           return $false
        }
        
    }
    [bool] IsEmpty()
    {
        if ($this.length -eq 0 -or $null-eq $this.head )
        {
            $this.head = $null
            $this.tail = $null
            return $true
        }

        else
        { 
           return $false
        }
        
    }

   

     append([int] $value)
     {
        $node = [Node]::new($value)
        $status = $this.IsEmpty($node)    
        if( $status -eq $false)
         {        
        
         $this.tail.next = $node
         $this.tail = $node
         $this.length += 1
         }
        
    }

   [psobject] pop()
    {
        $status = $this.IsEmpty()
        
        if($false-eq $status)
        {
         $temp = $this.head
         $pre = $this.head
         while($temp.next)
         {
            $pre = $temp
            $temp = $temp.next
         }
         $this.tail = $pre 
         $this.tail.next = $null
         $this.length -= 1
         $this.IsEmpty()
         return $temp.value
        } 
        else {
          return $null
        }
        
    }


    prePend($value)
    {       
       $node = [Node]::new($value)

       $node = [Node]::new($value)
       $status = $this.IsEmpty($node)    
       if( $status -eq $false)
        {
            $node.next =  $this.head
            $this.head = $node
            $this.length += 1      
        }
    }




    [psobject] popFirst()
    {
      if ($this.IsEmpty()) 
      {
         return $this.head
      }
     else 
       {
           ($this.IsEmpty())
           $temp =  $this.head
           $this.head = $this.head.next
           $temp.next = $null
           $this.length -= 1
           $this.IsEmpty()
           return $temp
        
        }
     
    }

   

 

     [psobject] get($index)
      {
        if ($index -lt 0 -or $index -ge $this.length)
        {
            $temp = "Out Of range"
            write-host 
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

        }
        return $temp 
      }

        
    setValue($index, $value )
    {
        $temp = $this.get($index)
        $temp.value = $value
    }

    [psobject] insert($index, $value)
    {
        # if ($index -lt 0 -or $index -ge $this.length)
        # {
        #     return $null
        # }
        # if($index == 0 )
        # {
        #    return $this.append($value)
        # }
        # if($index == $this.length )
        # {

        # }
        
        $node = [Node]::new($value)
        $temp = $this.get($index -1)
        $node.next = $temp.next
        $temp.next = $node
        $this.length += 1 
        $this.head
    }

    [psobject]remove($index)
    {
    $prev = $this.get($index-1)
    $temp = $prev.next
    $prev.next = $temp.next
    $temp.next = $null
    $this.length -= 1
    return $temp
 
    }

    reverseLinkedList()
    {
     $temp = $this.head
     $this.head = $this.tail 
     $this.tail = $temp
     $after = $temp.next
     $before = $null
     
     for( $i = 0; $i -lt $this.length; $i++) 
     {
         $after  =  $temp.next
         $temp.next = $before 
         $before = $temp
         $temp = $after
             
     }  
        
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
  
}

 $myLinkList = [LinkedList]::new(0)
 $myLinkList.append(1)
 $myLinkList.append(2)
 $myLinkList.append(3)
 $myLinkList.append(4)
 $myLinkList.append(5)
 $myLinkList.prePend(-1)
 $myLinkList.pop()
 $myLinkList.pop()
 $myLinkList.pop()
 $myLinkList.PrintList()
 $myLinkList.pop()
 $myLinkList.prePend(-2)
# $myLinkList = [LinkedList]::new(12)
# $myLinkList.append(15)
# $myLinkList.append(54)
# $myLinkList.append(60)
# $myLinkList.append(70)
# $myLinkList.append(30)
# $myLinkList.PrintList()

# write-Host "Pop test:"

# $myLinkList.pop()
# write-Host "NewList:"
# $myLinkList.PrintList()
# Write-Host "prepend Test"
# $myLinkList.prePend(50)
# write-Host "NewList:"
# $myLinkList.PrintList()
# write-host "Pop_first"
# $myLinkList.popFirst()
# write-Host "NewList:"
# $myLinkList.PrintList()
# write-host "get"
# $myLinkList.get(2).Value
# write-Host "NewList:"
# $myLinkList.PrintList()
# write-host "Set Value based on index"
# $myLinkList.setValue(1,1)
# write-Host "NewList:"
# $myLinkList.PrintList()
# write-host "insert Value based on index"
# $myLinkList.insert(1,2)
# write-Host "NewList:"
# $myLinkList.PrintList()

# write-host "remove Value based on index"
# $myLinkList.remove(2).value
# write-Host "NewList:"
# $myLinkList.PrintList()

# write-host "reverse LinkedList"
# $myLinkList.reverseLinkedList()
# write-Host "NewList:"
# $myLinkList.PrintList()
