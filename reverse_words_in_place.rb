def in_place_reverse(str)
    str = str.reverse
      start_idx = 0
      (0..str.length).each do |i|
        if str[i] == " " || str[i] == nil 
        str[start_idx...i] = str[start_idx...i].reverse
          start_idx = i+1
        end 
      end 
      str
    end 
    
    p in_place_reverse(message)
    