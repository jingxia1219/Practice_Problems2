# determine if a number is a palindrome without converting it to string

def is_palindrome(x)
    return false if x < 0 || x%10 == 0
#     12321
#     1221
    right_half = x%10
    left_half = x/10
    new_digit = nil
    until left_half <= right_half
        # p "left_half: #{left_half}"
        new_digit = left_half%10
        right_half =  right_half*(10) + new_digit
        left_half = left_half/10
        # i+= 1 
    end 
    p "new_digit: #{new_digit}"
    # p "left_half: #{left_half}"
    # p "right_half: #{right_half}"
    # p "new_left: #{left_half*10 + new_digit}"
    return true if left_half == right_half ||
        left_half*10 + new_digit == right_half
    false 
end

p is_palindrome(121)
p is_palindrome(1221)
p is_palindrome(1210)