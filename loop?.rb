class Node
    attr_accessor :val, :next_node 
    def initialize(val,next_node = nil)
      @val, @next_node = val, next_node
    end 
  end 
  
  
  node4 = Node.new(4)
  node3 = Node.new(3,node4)
  node2 = Node.new(2,node3)
  node1 = Node.new(1,node2)
  node6 = Node.new(6)
  node5 = Node.new(5,node6)
  node4.next_node = node5
  # p node1
  
  def loop?(head)
    hash = Hash.new {false}
    until head.next_node.nil? 
      return true if hash[head]
      hash[head] = true
      head = head.next_node
    end 
    false
  end 

  p loop?(node1)