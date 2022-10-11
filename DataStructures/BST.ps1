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

    [void] Insert($value)
    {
      $node = [Node]:: new($value)
      if($null -eq $this.root)
      {
         $this.root = $node
      }
    }

}

$tree = [BST]::new();

$tree.Insert(2)
$tree.root.value
$tree.left
$tree.right




