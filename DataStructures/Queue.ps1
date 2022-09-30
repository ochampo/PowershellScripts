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

}


$queue = [Queue]:: new(1)

$queue.printQueue()