def my_atoi(str)
    hash = {
    '1' => 1,'2'=>2, '3'=>3, '4'=> 4, '5'=>5, 
    '6' => 6, '7'=>7, '8'=>8,'9'=>9,'0'=>0
    }
    first_nonwhitespace = nil
    number = nil
    negative = false
    return 0 if str.length < 1
    str.length.times do |i|
        if str[i] == " "
          if number 
            break 
          else 
            next 
          end 
        end 
        if hash[str[i]].nil? && !['+','-'].include?(str[i]) 
            if number.nil?
              return 0
            else
                break
            end 
        end 
        if ['+','-'].include?(str[i])
          break if number 
         return 0 if hash[str[i+1]].nil? 
              negative = true if str[i] == '-'
            end 
        
        if hash[str[i]] 
            if number.nil?
            p "hash[str[i]] : #{hash[str[i]] }"
                number = hash[str[i]]
            else 
                number = number*10 + hash[str[i]]
            end     
        end 
        p "number: #{number}"
    end 
    return 0 unless number
    if negative
       number = -number
       p number
    end 
     if number && number > 2147483647
         return 2147483647
     end 
    if number && number < -2147483648
        return (-2147483648)
    end 
    number
end