# Write a recursive function that takes in the head node of a singly linked list and outputs the same linked list only reversed.

class Node 
      attr_accessor :val, :next_node
      def initialize(val, next_node = nil)
        @val, @next_node = val, next_node
      end 
    end 
    
    
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

    # node3 = Node.new(3)
    node2 = Node.new(2)
    node1 = Node.new(1,node2) #head

   
    def reverse_linkedlist(head,prev =nil)
        return prev if head.nil? 
        next_n = head.next_node
        
        head.next_node = prev 
        # p "head_after: #{head.next_node.val}" 
        print 'prev: '
        p prev
        p '-----'
        print 'head_after'
        p head
            p '----------'
        print "next_n: " 
        p next_n
            p '----------------------'
        reverse_linkedlist(next_n,head)
      end 
 
    
     p reverse_linkedlist(node1)