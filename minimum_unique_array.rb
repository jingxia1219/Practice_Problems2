# Given an array, you must increment any duplicate
#  elements until all its elements are unique. In addition, 
# the sum of its elements must be the minimum possible within the rules. For example, 
# if arr = [3, 2, 1, 2, 7], thenarrunique =[3,2,1,4,7]anditselementssumtoaminimalvalueof3+2+1+4+7=17.
# Function Description
# Complete the getMinimumUniqueSum function 
# in the editor below to create an array of unique elements with a minimal sum. Return the integer sum of the resulting array.
# getMinimumUniqueSum has the following parameter(s): 
# arr: an array of integers to process

def min_unique(arr)
    arr.sort! #[1,2,2,3,7]
    uniq = []
    dups = []
    (arr.length ).times do |i|
        if arr[i] == arr[i+1]
            dups << arr[i]
        else 
            uniq << arr[i]
        end 
    end 

    dups.each do |el|
        while uniq.include?(el)
            el+=1
        end 
        uniq << el
        p uniq
    end 
   p uniq.reduce(:+)
end 

min_unique([1,2,2,3,7])