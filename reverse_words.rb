# Reverse all the words, not the letters in the words, In PLACE!
# 'hi apple' => 'apple hi'
# reverse letters until one hits white space means it's a new rod 

require_relative 'reverse_char'
def reverse_words(words)
    words = reverse_char(words) #reversed every char in the words, O(n)
    # can't use each or each with index on str 
    start_idx = 0
    words.length.times do |i|
        if words[i] ==" "
            words[start_idx...i]=reverse_char(words[start_idx...i])
            start_idx = i+1
        elsif i == words.length - 1 
        words[start_idx..-1]=reverse_char(words[start_idx..-1])
        end 
    end 
    words
end 

reverse_words('hi apple') # return apple hi