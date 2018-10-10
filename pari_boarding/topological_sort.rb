# Tarjan's Topological Sort:
# implement topological sort using Targan's Algorithm 

# The algorithm loops through each node of the graph, in an 
# arbitary order, initiating a DFS that terminates when it 
# hits any node that has already been visted since the beginning of the 
# topological sort or if the node has no out_edges:

# Each node n gets prepended to the output list L only after 
# considering all other children of the node. 
# means when n is added to the list, all depedents are already in L list

# My Way:

class Vertex
    attr_accessor :val, in_edges, out_edges
    def initialize(val, in_edges=[], out_edges=[])
        @val, @in_edges, @out_edges = val, in_edges, out_edges
    end 
end 

v1, v2, v3 = Vertex.new(1),Vertex.(new2),Vertex.new(3)


class Edge 
    attr_accessor :from_node, :to_node
    def initialize(from_node=nil, to_node=nil)
        @from_node,@to_node = from_node, to_node
    end 

    def connect(from_node,to_node)
        self.from_node = from_node 
        self.to_node = to_node
        from_node.out_edges << self 
        to_node.in_edges << self 
    end 
end 

edge1, edge3 = Edge.new(),Edge.new(), Edge.new()
edge1.connect(v1, v2)
edge2.connect(v2,v3)
edges = [edge1, edge2, edge3]
vertices = [v1, v2, v3]
class Graph 
    attr_accessor :vertices, :edges
    def initialize(vertices, edges)
        @vertices, @edges = vertices, edges
    end 
end 
graph = Graph.new(vertices, edges)


def topogoical_sort(graph)
    visited = Set.new 
    result = []
    graph.vertices.each do |v|

    end 
end 

def bfs(v, )