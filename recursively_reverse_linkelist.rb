# Write a recursive function that takes in the head node of a singly linked list and outputs the same linked list only reversed.

class Node 
      attr_accessor :val, :next_node
      def initialize(val, next_node = nil)
        @val, @next_node = val, next_node
      end 
    end 
    
    # node3 = Node.new(3)
    node2 = Node.new(2)
    node1 = Node.new(1,node2) #head
    # p node1
    # 1 => 2 => 3 => nil 
    # return 3 => 2 =>1 => nil
    
     # 1 => 2 => 3
     # placeholder = 3
     # 2 => 1
    #  def reverse_linkedlist(head)
    #     return head if head.nil?
    #     reverse_linkedlist(head.next_node)
    #     next_n = head.next_node 
    #     next_n.next_node = head 
    #     head.next_node = nil 
    #  end


    def reverse_linkedlist(head)
      # 1 => nil 
      #1. return the passed in head if there's no next_node (base case)
      return head if head.next_node.nil? 
    #   head = 2
    #   2 => nil returned
      # 1 => 2 => nil 
      head2 = head.dup 
      reverse_linkedlist(head.next_node).next_node = head2 
      # 2.next_node = 1 
      p "head: #{head.val}"
      #2. 
    end 
    
    
     p reverse_linkedlist(node1)