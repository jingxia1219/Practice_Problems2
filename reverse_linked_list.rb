class Node
    attr_accessor :val, :next_node 
    def initialize(val, next_node = nil)
      @val, @next_node = val, next_node 
    end 
  end 

def reverse_linked_list(head)
    current = head
    previous = nil
    while current
      next_current = current.next
      current.next = previous
      previous = current
      current = next_current
    end
    previous
  end