# find the kth_smallest node in a BST 

class Node  
attr_accessor :val, :left, :right 
    def initialize(val,left = nil, right = nil,parent = nil)
        @val = val
        @left= left
        @right = right 
        @parent = parent 
    end 

    def insert(node)

    end 

    def delete(node)

    end 
end 

def find_kth_smallest(root,k)
    smallest = find_smallest(root)
    curr_node = root 
    while k>0
    if curr_node.right 
        k-=1 
        if k == 0
            return curr_node.right 
        end 
        curr_node.right = nil 
    else 
        curr_node = curr_node.parent
        k-=1 
    end 
    curr_node
end 

def find_smallest(root)
    return root if root.left.nil? 
    find_smallest(root.left)
    #O(n) 
    # amortized o(logn)
end 

