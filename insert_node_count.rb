

class Node
    attr_accessor :val, :left, :right 
    def initialize(val, left = nil, right=nil)
        @val, @left,@right = val, left, right 
    end 
end 

class BST 
    attr_accessor :root, :count 
    def initialize(root =nil, count = 0)
        @root = root 
        @count = count 
    end 
    
    def insert(root,val)
    # p count 
        if val < root.val 
            if root.left.nil? 
                root.left = Node.new(val)
                @count += 1
            else 
                insert(root.left, val) 
                @count += 1
            end 
        else 
            if root.right.nil?
                root.right = Node.new(val)
                @count += 1
            else 
                insert(root.right, val)
                @count += 1
            end 
        end 
   
    end 
    
end 

def createBST(keys)
    root = nil 
    bst = BST.new()
    # Write your code here
    keys.each do |val|
        if root.nil?
            root = Node.new(val)
            bst = BST.new(root, 0)
            p bst.count
           
        else 
            bst.insert(root,val)
            p bst.count
        end 
    end 
end

