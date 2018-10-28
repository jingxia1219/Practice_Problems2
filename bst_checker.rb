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
        # Time complexity is O(n), for valid BST, we have to check all nodes
        # Space complexity is O(n), greatest_ancestor and smallest O(1)
        # nodes O(d) d being the depth/level
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
           if node.left.val > node.val #checks the direct parent node relationship
             p 'line83'
               return false
           end 
        # left = node.left
        # return false if left.val > node.val 
        if greatest_ancestor.nil? || node.val > greatest_ancestor
         nodes << [node.left, node.val,smallest_ancestor]
        else 
            nodes << [node.left, greatest_ancestor,smallest_ancestor]
        #  DON'T use global variable greatest ancestor here as it will affect
        #  the other side's subtree, but directly use the value in the greatest
        #  ancestor's place will only pass the value down to its own line
         end 
          # greatest_ancestor = nil 
        end 
    
          if node.right 
              if node.right.val < node.val
              p 'line 94'
                return false 
              end 
             if smallest_ancestor.nil? || node.val < smallest_ancestor
              nodes << [node.right, greatest_ancestor,node.val ]
             else 
                nodes << [node.left, greatest_ancestor,smallest_ancestor]
              end 
              # smallest_ancestor = nil 
          end 
        #   p nodes

        end 
          true 
      end 
    
    def binary_search_tree?(root)
  # start at the root, with an arbitrarily low lower bound
  # and an arbitrarily high upper bound
  node_and_bounds_stack = []
  node_and_bounds_stack.push([root, -Float::INFINITY, Float::INFINITY])

  # depth-first traversal
  until node_and_bounds_stack.empty?
    node, greatest_ancestor, smallest_ancestor = node_and_bounds_stack.pop

    # if this node is invalid, we return false right away
    return false if (node.value <= greatest_ancestor) || (node.value >= smallest_ancestor)

    if node.left
      # this node must be less than the current node
      node_and_bounds_stack.push([node.left, greatest_ancestor, node.value])
    end
    if node.right
      # this node must be greater than the current node
      node_and_bounds_stack.push([node.right, node.value, smallest_ancestor])
    end
  end

  # if none of the nodes were invalid, return true
  # (at this point we have checked all nodes)
  true
end
    
    node20 = Node.new(20)
    node60 = Node.new(40)
    node30 = Node.new(30, node20,node60)
    node70 = Node.new(70)
    node90 = Node.new(90)
    node80 = Node.new(80,node70,node90)
    node50 = Node.new(50,node30, node80)
    
     bst?(node50)

    node_left = Node.new(1)
node_right3 = Node.new(5)
node_right1 = Node.new(4,nil,node_right3)
node_left2 = Node.new(2.5)
node_right2 = Node.new(3,node_left2,node_right1)
root = Node.new(2,node_left, node_right2)

def second_largest(root)
   min = root
  while min.right
    parent = min
    min = min.right
  end 
  parent 
end 
p second_largest(root)