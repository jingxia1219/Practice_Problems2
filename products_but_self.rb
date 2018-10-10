# Given an array of integers, and for each item, replace it with a product of all elemtents
# but itself, Can Not use division.
# e.g   [1, 7, 3, 4] => [7*3*4, 1*3*4, 1*7*4, 1*7*3] => [84, 12, 28, 21]
def get_products_but_self(arr)
    # raise 'need more than itself to get all other products' if arr.length < 2
    # result = [] 
    # #first just try to come up with a way that works even if it's slow 
    # arr.each_with_index do |el,idx|
    #     arr[idx] = 1 
    #     result << arr.reduce(:*)  O(n) in a O(n) loop 
    #     arr[idx] = el 
    # end 
    # result  This works, Time: O(n^2) space:O(n), created 1 new array Now try to optimize 
    
    # Faster way, trying greedy way, constanly update the variable
    products_before_el = [1] # when we are at the first el, the product before that we use 1
    products_after_el = [] #we know that product after the last el, we can use 1, and since
    #we can only multiply, we backwards from the last el for products after el
    end_idx = arr.length - 1 
    products_after_el[end_idx] = 1
    (1..end_idx).each do |i| # time O(n)
        products_before_el[i] = products_before_el[i-1]*arr[i-1]
        products_after_el[end_idx - i] = products_after_el[end_idx - i + 1]*arr[end_idx - i +1]
    end 
    result = []
    arr.length.times do |i| 
        result[i] = products_before_el[i] * products_after_el[i]
    end 
    result 

    # Can we improve on space? 
end 
# time O(n), space O(3n) as we created 3 new variables, which improved on Time 
get_products_but_self([1, 7, 3, 4]) 