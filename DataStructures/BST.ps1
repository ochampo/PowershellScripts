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

}

$tree = [BST]::new();

$tree




