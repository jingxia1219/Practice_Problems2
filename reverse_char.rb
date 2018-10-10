# In place reverse all the letters in a str 
# Given: 'abc' => 'cba'
# 'apple' => "elppa"
def reverse_char(str)
    # each time we move the last letter to before arr[i], 
    # i start at 0, and increment by 1 
    # e.g 'abc', => 'c' moved before 'a' => 'cab'
    # we can do arr = arr[-1] + arr[i...-1]
    # the last i = 2 in this case move 'b' before 'b', we can skip 
    (str.length - 1).times do |i|
    #  p i
     if i == 0 
       str = str[-1] + str[0...-1]
      #  p str
       next
      else 
        str = str[0...i] + str[-1] + str[i...-1]
        # p str
      end 
    end 
    str 
end 
# Time O(n) space O(1), i didn't create any new variable which fulfills in place

# alternate: 
def reverse_char2(str)
    # we can keep switch the last with first, 2nd to last with 2nd letter in the string
    left_idx = 0 
    right_idx = str.length - 1 
    while left_idx < right_idx 
        str[left_idx], str[right_idx] = str[right_idx], str[left_idx]
        left_idx += 1 
        right_idx -=1 
    end 
    str 
end 

reverse_char('abc')
reverse_char2('apple')