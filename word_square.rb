# given a non-empty square array, decide if it's a word square.
# word square means arr[i][j] is always = arr[j][i]
# eg [[a,b,c],
#     [b,e,d],
#     [c,d,f]] is a word square 
def word_square?(arr)
    # first brute force, using i and j 
    i = 0 
     while i < arr.length 
        j = 0 
        while j < arr.length 
            # next if i >= j will overflow as j never increments
            if i >= j 
                j+= 1 
                next 
            end 
            return false unless arr[i][j] == arr[j][i]
            j += 1 
        end 
        i+=1 
    end 
    true
    # now think how i can optimize it when i == j 
    # it's comparing itself against itself, so we don't need to check 
    # also we checked each pair twice  , [0][2] first and [2][0]
    # the first round since we increment inner loop first, second number
    # is bigger, so we don't need to check if first number is bigger than secodn number 
    # means it's the same pair 
end 

word_square?([["a","b","c"],["b","e","d"],["c","d","f"]]) # true 
word_square?([["a","b","c"],["d","e","f"],["a","b","c"]]) # false
