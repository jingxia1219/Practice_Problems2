class BST
    attr_accessor :val, :left, :right
    def initialize(val,left =nil, right =nil)
      @val, @left,@right = val, left, right
    end 
    
  end 
  
  
  left2 = BST.new(1)
  left_2 = BST.new(4)
  left1 = BST.new(2,left2,left_2)
  
  
  node5 = BST.new(5)
  node7 = BST.new(7)
  right1 = BST.new(6,node5,node7)
  
  root = BST.new(3,left1)
  
  # p root
  # second largest node should have val 6
  
  def largest_node(root)
    largest = root
    until largest.right.nil?
      largest = largest.right
    end 
    largest
  end 
  
  def second_largest_node(root)
    if root.right.nil? 
      if root.left.nil?
        raise ' need at least 2 nodes'
      else 
        return largest_node(root.left)
      end 
    end 
    largest = root
    parent = nil
    until largest.right.nil?
      parent = largest
      largest = largest.right
    end 
    if largest.left 
      return second_largest_node(largest.left )
    else 
      return parent
    end 
  end 
  
  
  # p largest_node(root) #should be 7, CORRECT
  p second_largest_node(root)