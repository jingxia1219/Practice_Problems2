class Node
    attr_accessor :val, :next_node
    def initialize(val,next_node = nil)
      @val, @next_node = val, next_node 
    end 
  end 
  
  node3 = Node.new(3)
  node4 = Node.new(4,node3)
  node2 = Node.new(2,node4)
  # p node2
  
  node_4 = Node.new(4)
  node_6 = Node.new(6,node_4)
  node_5 = Node.new(5,node_6)
  
  def convert_to_int(node)
    int = node.val 
    k = 1
    until node.next_node.nil?
      
      node = node.next_node
      # p node.val
      int = int + node.val * 10**k
      # p " int: #{int}"
      k +=1
      
    end 
    int 
  end 

# Remove Kth Node From End Of Linked List
# Given a linked list, remove the k-th node from the end of list and return its head.
# Could you do this in one pass?
# Example:

node__5 = Node.new(5)
node__4 = Node.new(4,node__5)
node__3 = Node.new(3, node__4)
node__2 = Node.new(2, node__3)
node__1 = Node.new(1,node__2) 
# In order to find the kth from last , we can use match length of k, and move till the end of the match is the last node 
# return the front of the match

def remove_kth_node_end(node,k)
    start_node = node 
    end_node = node  
    prev_start = nil 
    until k == 1 
    # make the match of length k 
      end_node = end_node.next_node 
      k -= 1
    end 
    
    until end_node.next_node.nil?
      prev_start = start_node
      start_node = start_node.next_node
      end_node = end_node.next_node 
    end
      prev_start.next_node = start_node.next_node 
      node 
  end 
  
  # Given linked list: 1->2->3->4->5, and k = 2.
  
  # After removing the second node from the end, the linked list becomes 1->2->3->5.
  # Note: Given k will always be valid.
  
  # 1). first find the kth_node from the linked_list
  # 2). save prev to kth_node 
  # 3). prev.next = kth_node.next 
  
  
  p remove_kth_node_end(node__1,2)
  