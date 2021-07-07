class GraphNode
    # neighbors are all the nodes connected by edges to the graphnode
      attr_accessor :label, :neighbors, :color
      def initialize(label)
        @label = label
        @neighbors = Hash.new {true}
        @color = nil
      end
    end
    graph_node3 = GraphNode.new(3)
    graph_node2 = GraphNode.new(2)
    graph_node1 = GraphNode.new(1)
    graph_node0 = GraphNode.new(0)
    graph_node0.neighbors[graph_node1] = true 
    graph_node1.neighbors[graph_node2] = true 
    graph_node1.neighbors[graph_node3] = true 
    graph_node2.neighbors[graph_node1] = true 
    # 
    graph_node2.neighbors[graph_node3] = true 
    graph_node3.neighbors[graph_node1] = true 
    # 
    graph_node3.neighbors[graph_node2] = true

def cyclic?(graph_node)
    print ' starting node : '
    p graph_node
      # use BFS to keep track of the visited nodes, if a node has been visited twice 
      queue = [] #space O(n)
      visited = Hash.new {false} #Space O(n)
      from_node = Hash.new {false} # SpaceO(1)
      queue.unshift([graph_node, from_node])
      until queue.empty? 
      # O(n) 
        node, from_node = queue.pop 
        if visited[node]
        print 'visited[node] :'
        p node
          return true 
        end 
        visited[node] = true
        print 'NNNNOOOODDDEEEE : '
        p node
        node.neighbors.delete_if { |k,v| from_node[k] }
        from_node[node] = true
          unless node.neighbors.empty?
            node.neighbors.each do |k,v|
              queue.unshift([k,from_node])
            end 
          end 
      end 
      false 
    end 
    
    p cyclic?(graph_node0)

    def graph_coloring(graph_node, maximum_degree)
        # Time: O(n*D)
        colors = (0..maximum_degree).to_a 
        queue = []
        visited = {}
        # from_node = nil 
        queue.unshift(graph_node)
        until queue.empty?
            # O(n)
          node = queue.pop
          neighbor_colors = {}
          
          node.neighbors.each do |neighbor,_|
            # O(D)
            neighbor_colors[neighbor.color] = true if neighbor.color
          end 
          print "node itself:"
          p node
          print 'neighbor_colors hash:::'
          p neighbor_colors
          
          colors.each do |color|
            # O(D+1) 
          # p color
            node.color = color unless neighbor_colors[color]
            if node.color
              visited[node] = true
              next
            end 
          end 
          print 'this node color is :  '
          p node.color
          new_neighbors = node.neighbors.dup 
          new_neighbors.delete_if { |k,v| visited[k] }
          
           new_neighbors.each do |k,v|
            # Time O(D)
            queue.unshift(k)
          end 
              # node.neighbors[node] = true
        end 
      end 
      
      graph_coloring(graph_node0,2)
      p graph_node1.neighbors
      p graph_node0.color
      p graph_node1.color
      p graph_node2.color 
      p graph_node3.color