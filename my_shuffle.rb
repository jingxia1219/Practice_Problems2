# given an array, return a new array consists of the same elements but in a random order 
# e.g  [1,2,3,4,5] 
# possibly return => [3,1,2,4,5]
def my_shuffle(array)
    # pick a random el from array to put in the new array
    result = []
    until array.empty?
     index = (0..array.length-1).to_a.sample
      result << array[index]
      array.delete_at(index)
    end 
    result 
  end 
  
  p my_shuffle([1,2,3,4,5])
  