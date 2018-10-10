def first_occurance(str1, str2)
    # first solve it as if there's no wildcard 
    # creating a helper method that returns all substring from str1 and the starting index
    substrings1 = substring(str1) #this is an array of array of substring and start_idx of str1
    substrings1.each do |el|
    p 
        return el.last if blur_equal(el.first,str2) #this should work without wildcard 
       
    end 
    -1 
end 

def substring(str) #return all the substring and the start_idx
    result = []
    i = 0 
    while i < str.length 
        j = i 
        while j < str.length 
            result << [str[i..j],i] #i is the index of the starting letter 
            j+=1
        end 
        i+=1
    end 
    result
end 

# with wildcard
# make a blur_equal to return true for 'abc' == 'a*c'
def blur_equal(str1, str2)
    str2.length.times do |i|
        return false if str1[i] != str2[i] && str2[i] != "*"
    end 
    true 
end 


first_occurance("juliasamanthasamanthajulia", "ant*as") #returns 8, CORRECT
first_occurance("abcdef", "bc") #returns 1
first_occurance("abcdef", "bbc") #returns -1