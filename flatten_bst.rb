class BST
    attr_accessor :val, :left, :right
    def initialize(val, left=nil, right =nil)
      @val, @left, @right = val,left,right
    end 
  end 
# DFS 
# stack 
node_3 = BST.new(3)
node_4 = BST.new(4)
node_2 = BST.new(2,node_3,node_4)
node_6 = BST.new(6)
node_5 = BST.new(5,nil,node_6)
root = BST.new(1,node_2,node_5)
# p root
# p '-=-=-=-=-=-=='

  def flatten_bst(root)
  stack = [root]
  result = BST.new(root.val ) 
    until stack.empty?
     curr = stack.pop
     print 'result :'
     p result
     if result.right.nil?
       last_node = result
     else 
       last_node = last_node.right
     end 
     print 'last_node: '
     p last_node
        last_node.right = BST.new(curr.val) unless curr == root 
        
        stack.push(curr.right) if curr.right  
        stack.push(curr.left) if curr.left 
        # result = curr
      end 
result
    end 

flatten_bst(root)