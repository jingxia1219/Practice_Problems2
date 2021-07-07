def finding_rotation_point(arr)
    # looking for alphabets towards the beginning such as a,b,c,d,e,f
    letters = ('a'..'z').to_a
    first_half = Hash.new {false}
    second_half = Hash.new { false }
    (0..12).each do |i|
    # O(1)
      first_half[letters[i]] = true 
    end 
    # O(1)
    (13..25).each do |i|
      second_half[letters[i]] = true 
    end 
    pivot = arr.length/2
    if arr[pivot-1] && letters.find_index(arr[pivot-1][0]) > letters.find_index(arr[pivot][0])
    # pivot is the rotation point 
    return arr[pivot]
    elsif arr[pivot+1] && letters.find_index(arr[pivot+1][0] )< letters.find_index(arr[pivot][0])
    return arr[pivot + 1]
    # pivot is the one before rotation point
    end
  
    if first_half[arr[pivot][0]]
      finding_rotation_point(arr[0..pivot])
    else 
      finding_rotation_point(arr[pivot+1..-1])
    end 
  end
  # Time O(logn)
  
    arr = [
      'ptolemaic',
      'retrograde',
      'supplant',
      'undulate',
      'xenoepist',
      'asymptote',  # <-- rotates here!
      'babka',
      'banoffee',
      'engender',
      'karpatka',
      'othellolagkage',
  ]