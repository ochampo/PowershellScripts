class Node
{
    $value
    $next
    Node($value)
    {
    $this.value = $Value
    $this.next = $null
    }
}


class Queue{
 [psobject]$first 
 [psobject]$last
 [int]$length = 0 

 Queue($value)
  {
    $node = [Node]::new($value)
    $this.first = $node
    $this.last = $node
    $this.Length = 1
  }

  [void] printQueue()
  {
    $temp = $this.first

    while($null -ne $temp)
    {
      Write-host $temp.value
      $temp = $temp.next
    }
  }
  [void] Enqueue($value)
  {
     $node = [Node]::new($value)
     if($null -eq $this.first)
     {
      $this.first = $node
      $this.last = $node
     }
     else 
     {
      $this.last.next = $node
      $this.last = $node
     }

     $this.length += 1 

  }

  [void] Dequeue()
  {
    if($this.length -eq 0)
    {
      "empty already"
    }
    if($this.length -eq 1) 
    {
      $this.first = $null
      $this.last = $null
    }
    else 
    {
      $temp = $this.first
      $this.first = $this.first.next 
      $temp.next = $null
    }


  }




}


$queue = [Queue]:: new(1)
$queue.Enqueue(2)
$queue.Enqueue(3)

$queue.Dequeue()


$queue.printQueue()
##logic for enqueue 
<# First              Last 
(1,node)=>(2,node)=>(3,node)=>null

temp = First (1,node)
temp-------> (1,node)
First---------^
____________________________
First = temp.next
temp = null 
First --------> (2,node)
temp --------> Null
First      LAST       
(2,node)=>(3,node)=>null

      
      $temp = $this.first
      $this.first = $this.first.next 
      $temp.next = $null


#>




