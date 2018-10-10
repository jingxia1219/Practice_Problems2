# Write a function that takes in a graph and prints out the edges that
# are bridges. A bridge is an edge whose deletion will 
# cause the graph to become disconnected 

class Graph 
    attr_accessor :nodes, :edges 
    def initialize(nodes= [], edges= [])
        @nodes, @edges = nodes, edges 
    end 

    def add_node(node)
        @nodes << node 
    end 

end 

class Node 
    attr_accessor :val, :edge_before_node, :edge_after_node
    def initialize(val, edge_before_node = [], edge_after_node = [])
        @val, @edge_before_node, @edge_after_node = 
        val, edge_before_node, edge_after_node
    end 

end 

class Edge # from_node is the node before edge 
    attr_accessor :from_nodes, :to_nodes #to_node is the node after edge
    def initialize(from_nodes = [], to_nodes =[])
        @from_nodes, @to_nodes = from_nodes, to_nodes
    end 

    def connect(from_node, to_node)
      self.from_nodes << from_node 
      self.to_nodes << to_node 
      from_node.edge_after_node  << self 
      to_node.edge_before_node << self 
    end 

end 

def find_bridges(graph)
    bridges = Hash.new(0)
    graph.edges.each do |edge|
        next_edge = false 

        edge.from_nodes.each do |from_node|
            if from_node.edge_before_node.length + from_node.edge_after_node.length <= 1 
                bridges[edge] += 1 
                next_edge = true 
                next 
            end 
        end 
        #  bridgesp
        next if next_edge #don't need to check on that edge 
        #if it's approving to be a bridge already

        edge.to_nodes.each do |to_node|
            if to_node.edge_after_node.length + 
            to_node.edge_before_node.length <= 1 
                bridges[edge] += 1 
                next_edge = true 
                next #don't need to check more on the edge
                #if we know it's a bridge
            end 
        end 
        # p bridges
        next if next_edge 

    end 
    bridges.keys
end 

# TEST:
node1, node2,node3 = Node.new(1,), Node.new(2), Node.new(3)
nodes = [node1, node2, node3]

edge1, edge2, edge3  = Edge.new(), Edge.new(), Edge.new()
edges = [edge1, edge2, edge3]
edge1.connect(node1,node2)
edge2.connect(node1, node3)
# edge3.connect(node3, node2)

graph = Graph.new(nodes, edges)

# O(n*m) Time 

find_bridges(graph).length #should return edge1 and edge 2 