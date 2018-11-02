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
    
    
    def binary_search_tree?(root)
      # start at the root, with an arbitrarily low lower bound
      # and an arbitrarily high upper bound
      node_and_bounds_stack = []
      node_and_bounds_stack.push([root, -Float::INFINITY, Float::INFINITY])
    
      # depth-first traversal
      until node_and_bounds_stack.empty?
        node, lower_bound, upper_bound = node_and_bounds_stack.pop
    
        # if this node is invalid, we return false right away
         if (node.val <= lower_bound) || (node.val >= upper_bound)
         print 'node.val :'
         p node.val 
         print 'lower_bound: '
         p lower_bound
         print 'upper_bound :'
         p upper_bound
         return false
         end 
        if node.left
          # this node must be less than the current node
          node_and_bounds_stack.push([node.left, lower_bound, node.val])
        end
        if node.right
          # this node must be greater than the current node
          node_and_bounds_stack.push([node.right, node.val, upper_bound])
        end
      end
    
      # if none of the nodes were invalid, return true
      # (at this point we have checked all nodes)
      true
    end
    
    node8 = Node.new(8)
    node6= Node.new(6,node8)
    node4 = Node.new(4,node6)
    node3 = Node.new(3)
    node2 = Node.new(2, node4, node3)
    node7 = Node.new(7)
    node3 = Node.new(3,node7)
    node1 = Node.new(1,node2,node3)
    
    # super_balanced?(node1)
    
    
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
    
    # dfs(node1,3)
    
    # write a method to check that a binary tree is a valid binary search tree.Check for left is smaller than parent and right is greater than parent 
    
    def bst?(root)
      nodes = []
      greatest_ancestor = nil
      smallest_ancestor = nil
      nodes << [root, greatest_ancestor, smallest_ancestor ]
    
      until nodes.empty?
       node, greatest_ancestor,smallest_ancestor = nodes.pop
        if (greatest_ancestor && node.val > greatest_ancestor )|| (smallest_ancestor && node.val < smallest_ancestor)
       
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
          p '------'
          p nodes
          p 's-----'
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
    
    # p bst?(node50)
    # p binary_search_tree?(node50)
    node_left = Node.new(1)
    node_right3 = Node.new(5)
    node_right1 = Node.new(4,nil,node_right3)
    node_left2 = Node.new(2.5)
    node_right2 = Node.new(3,node_left2,node_right1)
    root = Node.new(2,node_left, node_right2)
    
    
    node_9 = Node.new(9)
    node_11 = Node.new(11)
    node_10 = Node.new(10,node_9, node_11)
    node_12 = Node.new(12,node_10)
    node_7 = Node.new(7)
    node_8 = Node.new(8,node_7,node_12)
    node_1 = Node.new(1)
    node_4 = Node.new(4)
    node_3 = Node.new(3, node_1, node_4)
    node_5 = Node.new(5, node_3,node_8)
    
    def second_largest(root)
       max = root
       if root.right.nil?
       raise 'has to be at least two nodes to find the 2nd largest' if root.left.nil?
        return find_max(root.left)  
       end 
      while max.right
      # O(n) when there's only right subtree
        parent = max
        max = max.right
      end 
       p max
      p max.left.nil?
      if max.left.nil? 
        return parent 
      else 
       find_max(max.left)
      end 
      
    end 
    
    def find_max(node)
     sub_max = node
        while sub_max.right
          sub_max = sub_max.right
        end 
        return sub_max
    end 
    p second_largest(node_3)
    
    def bfs_search(root,val)
      queue = []
      queue.unshift(root)
      until queue.empty?
        node = queue.pop 
        if root.val == val 
          return root 
        elsif node.left && val < root.val
          queue.unshift(node.left)
        elsif node.right && val > root.val
          queue.unshift(node.right)
        end 
      end 
    end 
    
    p bfs_search(root,3)
    
    # Find the node that is greater than the given node
    #       15
    #     /    \
    #   10      20
    #  /  \     / \
    # 8   12  16   25
    
    def in_order_successor(root,val)
     queue = []
     bigger_parent = nil
     queue.unshift([root,bigger_parent])
     until queue.empty?
      node, bigger_parent = queue.pop 
      if node.val == val 
        if node.right
          return find_max(node.right)
        end 
        return bigger_parent if bigger_parent
      elsif val < node.val && node.left 
        queue.unshift([node.left,node])
      elsif val > node.val && node.right 
        queue.unshift([node.right,bigger_parent])
      end 
    end 
    end 
    
    
    node__8 = Node.new(8)
    node__12 = Node.new(12)
    node__16 = Node.new(16)
    node__25 = Node.new(25)
    node__20 = Node.new(20,node__16,node__25)
    node__10 = Node.new(10, node__8,node__12)
    node__15 = Node.new(15, node__10,node__20)
    p in_order_successor(node__15, 16)
      
      # if val == root.val, the in-order-successor will be the max in root.right 
      # if val < root.val 
    
    # find the kth smallest element in a BST
    def find_min(node)
      while node.left 
        node = node.left
      end 
      node
    end 
    
    def kth_smallest(root,k)
      min = find_min(root)
      until k == 1 
        min =  in_order_successor(root, min.val)
        k-=1
      end 
      min
    end 
    node1_1 = Node.new(1)
    node1_2 = Node.new(2,node1_1)
    node1_4 = Node.new(4)
    node1_3 = Node.new(3, node1_2, node1_4)
    node1_6 = Node.new(6)
    node1_5 = Node.new(5,node1_3,node1_6)
    
    
    p kth_smallest(node1_5,3)