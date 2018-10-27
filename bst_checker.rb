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
    
    
    def bst?(root)
      nodes = []
      greatest_ancestor = nil
      smallest_ancestor = nil
      nodes << [root, greatest_ancestor, smallest_ancestor ]
    
      until nodes.empty?
       node, greatest_ancestor,smallest_ancestor = nodes.pop
        if (greatest_ancestor && node.val > greatest_ancestor )|| (smallest_ancestor && node.val < smallest_ancestor)
        # check that all nodes in left subtree is less than root and all nodes 
        #  in the right subtree is greater than the root on top of 
        #  all left is less than direct parent and right is greater than direct parent

        # e.g      root=50 
        #          /      \
        #        30       80
        #       /  \     /   \
        #     20   *60  70   90
        # every right is greater than its direct parent, but 60 is not smaller than 
        # its great parent

        return false 
        end 
        
        if node.left 
           if node.left.val > node.val 
             p 'line83'
               return false
           end 
        # left = node.left
        # return false if left.val > node.val 
        if greatest_ancestor.nil? || node.val > greatest_ancestor
         nodes << [node.left, node.val,smallest_ancestor]
         end 
          # greatest_ancestor = nil 
        end 
    
          if node.right 
              if node.right.val < node.val
              p 'line 94'
                return false 
              end 
             if smallest_ancestor.nil? || 
              node.val < smallest_ancestor
    
              nodes << [node.right, greatest_ancestor,node.val ]
              end 
              # smallest_ancestor = nil 
          end 
        end 
          true 
      end 
    
    
    
    node20 = Node.new(20)
    node60 = Node.new(60)
    node30 = Node.new(30, node20,node60)
    node70 = Node.new(70)
    node90 = Node.new(90)
    node80 = Node.new(80,node70,node90)
    node50 = Node.new(50,node30, node80)
    
    p bst?(node50)