#graphs 
# waited graphs - allow for routes based on the wieght 
# Adjacency Matrix 

class Graph
{
    $adjList = {}

    [void] addVertex($vertex)
    {
        if($vertex.contains($this.adjList))
        {
            $this.adjList[$vertex] 
        }

    }
    
    
}