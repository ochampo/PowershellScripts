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

}

$tree = [BST]::new();

$tree.Insert(2)
$tree.Insert(1)
$tree.Insert(3)
$tree.root.value
$tree.root.left.value
$tree.root.right.value




