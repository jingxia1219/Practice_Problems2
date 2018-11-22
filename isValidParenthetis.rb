# given a string made of "(", ")","{","}","[" and "]"
# see if the opener and closers are valid in the str
# e.g "({})" should return true 
# e.g "[{]}" should return false 
# e.g "({[" would return false 

# Logic: the closer should match the last opener 
# For openers, use a stack to keep track of the last opener 
# if curr_closer doesn't match the last opener, return false 
# After the iteration is over, if openers stack is not empty, return false 

def valid_str?(str)
    openers = ["(", "{","["]
    stack = []
    closers = {")"=> "(", "}"=> "{", "]" => "["}
    str.length.times do |i|
        if openers.include?(str[i])
            # p openers.include?(str[i])
            stack.unshift(str[i]) 
            # p stack
        else 
            if closers[str[i]] == stack.first
                stack.shift
            else 
                return false 
            end 
        end 
    end 
    if stack.empty?
        return true 
    else 
        false 
    end 
end 

p valid_str?("({})")
p valid_str?("[{]}")
p valid_str?("({[")