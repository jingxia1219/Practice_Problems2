# Write a recursive function that takes in the head node of a singly linked list and outputs the same linked list only reversed.

class Node 
      attr_accessor :val, :next_node
      def initialize(val, next_node = nil)
        @val, @next_node = val, next_node
      end 
    end 
    
    
    node2 = Node.new(2)
    node1 = Node.new(1,node2) #head

   
    def reverse_linkedlist(head,prev =nil)
        return prev if head.nil? 
        next_n = head.next_node
        
        head.next_node = prev 
        # p "head_after: #{head.next_node.val}" 
        # print 'prev: '
        # p prev
        # p '-----'
        # print 'head_after'
        # p head
        #     p '----------'
        
        # print "next_n: " 
        # p next_n
        #     p '----------------------'
        reverse_linkedlist(next_n,head)
      end 
 
    
     p reverse_linkedlist(node1)