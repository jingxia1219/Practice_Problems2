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