
# You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

# You may assume the two numbers do not contain any leading zero, except the number 0 itself.

# Example:

# Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
# Output: 7 -> 0 -> 8
# Explanation: 342 + 465 = 807.

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
  
  def add_two_num(node1,node2)
    convert_to_int(node1) + convert_to_int(node2)
  end 
  #  Time O(n+m) 
  #  Space O(1)
  p add_two_num(node2,node_5)