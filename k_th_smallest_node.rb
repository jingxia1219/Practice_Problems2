class Node
    attr_accessor :val, :left, :right, :parent
    def initialize(val,left = nil,right=nil, parent = nil)
        @val = val 
        @left, @right = left,right
        @left.parent = self  if @left 
        @right.parent = self if @right 
        @parent = parent
    end 
    
    def insert(node)
        if node.val < self.val 
            
        else 
            
        end 
    end 
    
    def delete(val)
        
    end 
    
end 
#node2 = Node.new(2)
#left1 = Node.new(1,nil,node2)

#right1 = Node.new(4,node2)
#root = Node.new(3,left1,right1)

node1 = Node.new(1)
node2 = Node.new(2,node1)
node4 = Node.new(4)
node3 = Node.new(3,node2, node4)
node6 = Node.new(6)
node5 = Node.new(5,node3,node6)

def kth_smallest(node,k)
    smallest = get_smallest(node)
  #  kth_smallest_arr = []
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