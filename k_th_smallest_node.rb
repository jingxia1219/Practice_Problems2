# find the kth_smallest node in a BST 

class Node  
attr_accessor :val, :left, :right 
    def initialize(val,left = nil, right = nil)
        @val = val
        @left= left
        @right = right 
    end 

    def insert(node)
    end 

    def delete(node)
    end 
end 

def find_kth_smallest(root)

end 

def find_smallest(root)
    return root if root.left.nil? 
    find_smallest(root.left)
    #O(n) 
    # amortized o(logn)
end 

