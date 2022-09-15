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


class Stack
{
    $top
    $height = 0
    Stack()
    {
    
    }
    Stack($value)
    {
    $node = [Node]::new($value)
    $this.top = $node
    $this.height += 1
    }

    [void] push($value)
    {
        $node = [Node]::new($value)
        if ($this.height -eq 0)
        {
            $this.top = $node
        }
        else
        {
            $node.next = $this.top
            $this.top = $node
        }
        $this.height += 1
    }
    [void] PrintStack()
    {
        $temp = $this.top
        while($null -ne $temp)
        {
            write-host $temp.value
            $temp = $temp.next
            
        }
    }

    [void] Pop()
    {
        if($this.height -eq 0)
        {
            Write-Host "Nothing to pop"
        }
        else 
        {
            $temp = $this.top
            Write-Host $temp.value
            $this.top = $this.top.next
            $temp.next = $null
            $this.height -= 1
        }

    }


}

$stack = [Stack]::new()

$stack.push(1)
$stack.push(2)
$stack.push(3)
$stack.push(4)
$stack.Pop()
$stack.Pop()
$stack.Pop()
$stack.Pop()
$stack.Pop()
$stack.Pop()