# write a method that determines if a Binary Tree is super balanced, meaning if the shortest branch is at most 1 depth of compared to the longest branch 
class Node 
    attr_accessor :val, :left, :right
      def initialize(val, left =nil,right=nil)
        @val, @left, @right = val, left, right
      end 
    end 
    
    def super_balanced?(root)
      return true if !root 
      nodes = []# using stack allows for DFS as it keeps getting the children for that node 
      depths = []
      nodes.push([root,0]) 
      until nodes.empty?
        node,depth = nodes.pop
        if node.left.nil? && node.right.nil? 
          unless depths.include?(depth)
            depths << depth
            p depths
          end 
    
          if depths.length > 2 || (depths.length == 2 && (depths[0]-depths[1]).abs > 1) 
            return false
          end 
       end 
          if node.left 
            nodes << [node.left, depth+1]
          end 
          if node.right 
            nodes << [node.right, depth +1]
          end 
        
      end
    end 
    

    def dfs(root,val)
        nodes =[]
        nodes << root
        until nodes.empty? 
          node = nodes.pop 
          return node if node.val == val 
        nodes << node.left if node.left 
        nodes << node.right if node.right 
        end 
        nil
      end 
      
    
    node8 = Node.new(8)
    node6= Node.new(6,node8)
    node4 = Node.new(4,node6)
    node3 = Node.new(3)
    node2 = Node.new(2, node4, node3)
    node7 = Node.new(7)
    node3 = Node.new(3,node7)
    node1 = Node.new(1,node2,node3)
    
   p super_balanced?(node1)
    
   p dfs(node1, 3)