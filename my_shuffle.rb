# given an array, return a new array consists of the same elements but in a random order 
# e.g  [1,2,3,4,5] 
# possibly return => [3,1,2,4,5]
def my_shuffle(array)
    # pick a random el from array to put in the new array
    result = []
    until array.empty?
        # Time O(n)
        # Space O(n)
     index = (0..array.length-1).to_a.sample
      result << array[index]
      array.delete_at(index)
    end 
    result 
  end 
  
  p my_shuffle([1,2,3,4,5])
  

def in_place_shuffle(arr)
    #   randomly pick 2 indices and swap them 
    #   do it for arr.length times 
      arr.length.times do |i|
        idx1 = (0...arr.length).to_a.sample 
        idx2 = (0...arr.length).to_a.sample 
        arr[idx1],arr[idx2] = arr[idx2],arr[idx1]
      end 
      arr
    end 
    # Time O(n)
    # Space O(1)
    p in_place_shuffle([1,2,3,4,5])

