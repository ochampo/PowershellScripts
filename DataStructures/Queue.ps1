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
      $this.first = $null
      $this.last = $null
     }
     else 
     {
      $this.last.next = $node
      $this.last = $node
     }

     $this.length += 1 

  }

}


$queue = [Queue]:: new(1)

$queue.printQueue()