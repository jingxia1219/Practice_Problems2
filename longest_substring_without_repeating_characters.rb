# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    hash = {}
    curr_len = 0
    max_len = 0
    s.length.times do |i|
        if hash[s[i]].nil?
            hash[s[i]] = i
            curr_len += 1 
            max_len = curr_len if curr_len > max_len
        else 
            # hash = {}
           curr_len = i - hash[s[i]]
            hash.delete_if { |k,v| v < hash[s[i]] }
             hash[s[i]] = i
        end 
    end 
    p max_len
end

# O(n^2)
length_of_longest_substring("abcabcbb") #3 
# passed leetcode test