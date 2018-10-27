class Node
    attr_accessor :val, :left, :right, :parent
    def initialize(val,left = nil,right=nil, parent = nil)
        @val = val 
        @left, @right = left,right
        @left.parent = self  if @left 
        @right.parent = self if @right 
        @parent = parent
    end 
=    
end 

node1 = Node.new(1)
node2 = Node.new(2,node1)
node4 = Node.new(4)
node3 = Node.new(3,node2, node4)
node6 = Node.new(6)
node5 = Node.new(5,node3,node6)

class BST 
    attr_accessor :root
    def initialize(root = nil)
        @root = root 
    end 

    def insert(root = @root,val)
        if root.nil? 
            root = Node.new(val)
        elsif val < root.val 
            insert(root.left, val)
        elsif val > root.val 
            insert(root.right, val)
        end 
        return root 
    end 
    
    def delete(root= @root, val)
        if root.nil?
            return nil 
        elsif root.val == val 
            if root.left.nil? && root.right.nil?
                 return root = nil
            elsif root.left 
                root_right = root.right 
                root = root.left 
                root.right = root_right
            else 
                root = root.right 
            end 
        elsif val < root.val
            delete(root.left,val)
        else 
            delete(root.right,val)
        end  
    end 
end 

def kth_smallest(node,k)
    smallest = get_smallest(node)
    #o(logn)
    curr_node = smallest 
    p curr_node
    while k > 1
        #o(k)
        if curr_node.right
            # kth_smallest_arr << curr_node.right
            k-=1
           
            if k == 0 
               p curr_node.right 
                return curr_node.right 
            
            end 
    
            curr_node.right = nil 
        else 
            curr_node = curr_node.parent 
           # kth_smallest_arr << curr_node 
            k-=1
        end 
    end 
   p curr_node.val
    #o(klogn)
end 

def get_smallest(node)
    #o(logn)
    return node if node.left.nil? 
    get_smallest(node.left)
end 

p kth_smallest(node5,3)