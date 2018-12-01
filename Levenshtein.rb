def levenshtein(str1,str2)
    arr = Array.new(str1.length + 1) {Array.new(str2.length + 1, nil)}
      (0...arr[0].length).each { |i| arr[0][i] = i } 
    (arr.length).times do |j| 
    arr[j][0] = j 
     end 
    # p arr
    i = 1
      while i < arr.length
        j = 1
        while j < arr[0].length
          if str1[i-1] == str2[j-1] 
            arr[i][j] = arr[i-1][j-1] 
          else 
            arr[i][j] = 1+ [arr[i-1][j], arr[i][j-1], arr[i-1][j-1]].min
          end 
          j+=1
        end
        i += 1 
      end 
    #    p arr
      arr.last.last 
  end 
  
  str1= "cat" 
  str2="atom"
  
  
  p levenshtein(str1,str2)
  p levenshtein('bat','cat')
  p levenshtein('bat','')
  p levenshtein('','')