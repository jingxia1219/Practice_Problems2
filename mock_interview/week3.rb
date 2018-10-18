# Given an array of sorted integer arrays, print them in sorted order efficiently. The number of arrays in your array of arrays can vary as can the length of each individual array.
# let list = [
#         [10, 20, 30, 40],
#         [15, 25, 35],
#         [27, 29, 37, 48, 93],
#         [32, 33]
#       ]
# printSorted(list); // => [ 10, 15, 20, 25, 27, 29, 30, 32, 33, 35, 37, 40, 48, 93 ]

# Given an array of sorted integer arrays, print them in sorted order efficiently. The number of arrays in your array of arrays can vary as can the length of each individual array.
# let list = [
#         [10, 20, 30, 40],
#         [15, 25, 35],
#         [27, 29, 37, 48, 93],
#         [32, 33]
#       ]
# printSorted(list); // => [ 10, 15, 20, 25, 27, 29, 30, 32, 33, 35, 37, 40, 48, 93 ]

def merge_sorted(arrays)
    merged = []
    empty_count = Array.new(arrays.length) {false}
    until empty_count.count(false) == 1 
     curr_smallest = nil 
        curr_idx = nil
        arrays.each_with_index do |arr, idx|
            # O(N) n being the number of arrays 
            curr_smallest = arr[0] unless curr_smallest || arr[0].nil?
            curr_idx = idx unless curr_idx ||arr[0].nil?
           if arr[0].nil?
               empty_count[idx] = true 
               next
           end 
            if arr[0] < curr_smallest
                curr_smallest = arr[0]
                curr_idx = idx
            end 
        end 
        # p curr_idx
        merged << arrays[curr_idx].shift
    end 
    merged + arrays.flatten
end 

# def all_empty_but_one?(arrays)
#     # o(M) m being the length of the longest arr in arrays 
#     not_empty_count = 0 
#     p arrays
#     arrays.each do |arr|
#         not_empty_count += 1 unless arr.empty?
#         return false if not_empty_count > 1 
#     end 
    
#     true 
# end 

# time complexity would be O(m*n)
arrays = [
        [10, 20, 30, 40],
         [15, 25, 35],
         [27, 29, 37, 48, 93],
         [32, 33]
       ]
p merge_sorted(arrays)