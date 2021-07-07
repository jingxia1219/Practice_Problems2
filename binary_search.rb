def binary_search(sorted_arr,target)
    pivot = sorted_arr.length/2 
    print 'pivot :'
    p pivot
    print 'sorted_arr[pivot] :'
    p sorted_arr[pivot]
    return pivot if sorted_arr[pivot] == target 
    raise 'target not in the arr' if sorted_arr.empty? 
    if target < sorted_arr[pivot]
      # means target is in left half 
      return binary_search(sorted_arr[0...pivot],target)
    else 
      return pivot + 1 + binary_search(sorted_arr[pivot+1..-1],target)
    end 
    
  end 
  
  p binary_search([0,1,2,3,4,5],5)
  p binary_search([0,1,2,3,4,5,6,7],3)