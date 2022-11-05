## full tree 
<# IF node D had two children it would be perfect + Complete
Node that does not have children are leafs
  (nodeA)
 /    \
 (nodeB) (nodeD)
 /    \
(nodeC)(nodeE)

#>
class Node
{
    $value 
    $left
    $right
 Node($value)
 {
    $this.value = $value
    $this.left = $null
    $this.right = $null
 }
 
}

 class BST
 {
    $root = $null

    [Node] Insert($value)
    {
      $node = [Node]:: new($value)
      if($null -eq $this.root)
      {
         $this.root = $node
         return $this.root
      }
      else 
         {
      $temp = $this.root
      while($true)
      {
         if($node.value -eq $temp.value)
         {
            return $node 
         }
         if($node.value -lt $temp.value)
         {
            if($null -eq $temp.left)
            {
               $temp.left = $node 
               return $node
            } 
            $temp = $temp.left
         }
         else 
         {
            if ($null -eq $temp.right)
            {
               $temp.right = $node
               return $node
            }
            $temp = $temp.right
         }

      }
      }
   return Continue;
    
    }

    [bool] Contains($value)
    {
      if($null -eq $this.root)
      {
         return $false;
      }
      $temp = $this.root
      while($null -ne $temp)
      {
         if($value -lt $temp.value)
         {
            $temp = $temp.left
         }
         elseif ($value -gt $temp.value) {
            $temp = $temp.right
         }
         else 
         {
            return $true 
         }
         
      }
      return $false;

    }

}

$tree = [BST]::new();

$tree.Insert(2)
$tree.Insert(1)
$tree.Insert(3)
$tree.Insert(4)
$tree.Insert(10)
$tree.Insert(100)
write-host "contains method test" $tree.Contains(80)
Write-host "root" + $tree.root.value
write-host "left " + $tree.root.left.value
write-host "right " + $tree.root.right.value
#$tree.root.right.right.right.right.value




