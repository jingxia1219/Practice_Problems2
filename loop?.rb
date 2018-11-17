# detect if there is a loop in the link list
# if there is a loop , break the loop and return true 
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
  # node6 = Node.new(6)
  node5 = Node.new(5,node2)
  node4.next_node = node5
  # p node1
  
  def loop?(head)
   head2 = head
    hash = Hash.new {false}
    until head.next_node.nil? 
      if hash[head.next_node]
        head.next_node = nil 
        p head2
        return true 
      end 
      hash[head] = true
      head = head.next_node
    end 
    false
  end 
  
  p loop?(node1)