def longest_palindrome(s)   
    return s if s.length <=1 
        longest = s[0] 
       (0..(s.length-1)).each do |i|
      #  O(n)
       palidrome = nil 
        k = i 
        until s[i] != s[k+1] || k == s.length - 1
          #  O(n)
          k+=1
          palidrome = s[i..k]
        end 
           j = 1
          #  expanding from center 
            palidrome = s[i-j..k+j] if s[i-j]  == s[k+j] && i-j >= 0 && k+j <= s.length - 1
           next unless palidrome  
               until i - j == 0 || k+j == s.length - 1 || s[i-j] != s[k+j]
               longest = palidrome if palidrome.length > longest.length 
              break if  s[i-j-1]  != s[k+j+1] 
               j+=1
                palidrome = s[i-j..k+j]
                end 
                longest = palidrome if palidrome.length > longest.length 
           end 
        longest
    end
    
    p longest_palindrome("abcba")