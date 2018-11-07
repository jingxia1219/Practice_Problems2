def longest_palindrome(s)   
    return s if s.length <=1 
        longest = s[0] 
       (0..(s.length-1)).each do |i|
       palidrome = nil 
        k = i 
        until s[i] != s[k] || k == s.length - 1
        break if s[k] != s[k+1]
          k+=1
          palidrome = s[i..k]
        end 
           j = 1
           p "----"
           p "i, k:  #{i}, #{k}"
           p "j: #{j}"
           p "s[i-j] #{s[i-j]}"
           p "s[k+j]: #{s[k+j]}"
           p '----'
            palidrome = s[i-j..k+j] if s[i-j]  == s[k+j] && i-j >= 0 && k+j <= s.length - 1
        p "palidrome: #{palidrome}"
           next unless palidrome
               
               until i - j == 0 || k+j == s.length - 1 || s[i-j] != s[k+j]
               longest = palidrome if palidrome.length > longest.length 
              break if  s[i-j-1]  != s[k+j+1] 
               p "s[i-j] : #{s[i-j]} ; s[k+j] : #{s[k+j]}"
               j+=1
              
                palidrome = s[i-j..k+j]
                 p "palidrome2: #{palidrome}" 
                end 
                longest = palidrome if palidrome.length > longest.length 
               p "longest #{longest}"
           end 
        longest
    end
    
