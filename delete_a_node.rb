# delete a node from a BST

class Node 
    attr_accessor :left, :right, :val  
    def initialize(val, left=nil, right=nil)
        @val = val 
        @left, @right = left, right
    end 
end
node7 = Node.new(7)
node6 = Node.new(6,nil,node7)
node2 = Node.new(2)
node4 = Node.new(4)
node3 = Node.new(3,node2, node4)
node5 = Node.new(5,node3,node6)

class BST 
    attr_accessor :root 
    def initialize(root = nil)
        @root = root 
    end
end 

def delete_node(root, val, parent =nil)
    if root.nil?
        return 'the node you\'re trying to delete is not in the BST'
    elsif root.val == val   
        if root.left 
            root.val = max_val(root) #this will create a new root with the max of left subtree and delete the new root from its old tree 
        else 
             root = root.right
        end  
    elsif root.val < val 
        p root.right 
         delete_node(root.right,val,root)
        p root.right
    elsif root.val > val
         delete_node(root.left,val, root)
    end 
    root    
end 

def max_val(root)
  max = root.left
   parent = root 
    while max.right
      parent = max
        max = max.right 
    end 

    if parent == root 
        # when the biggest node is the left child of the root, replace the 
        # value of root with val of root.left and set root.left who got 
        # promoted to be the root to nil
    parent.left = nil 
    else 
    parent.right = nil
    end 
    max.val
end 
p delete_node(node5,3)
