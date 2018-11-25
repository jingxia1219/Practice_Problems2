# Given an array of postive integers, return a maximum sum possible 
# as a result of adding non-adjacent elements 

# 1). Decide to choose the first num or the sec num if comparing the second num to the sum of 1st and 3rd number, if 2nd num is greater than the sum, we choose it.
# 2). After deciding the first num to add to the sum, 
# e.g input: [75, 105, 120, 75, 90, 135] 
# we pick the first num 75, and add 75 to sum, new_arr = arr[2..-1] 
# [120, 75, 90, 135] sum = 75
# we pick 120, sum = 75+120 , new_arr = arr[2..-1] = [90,135]
# FIRST CHECK the length of new_arr > 2 
# else if we pick the second num new_arr = arr[3..-1] 
# 
# EDGE case: if arr.length <=2 

def max_sum(arr)
    if arr.length < 3 
      return arr.max 
    end 
  #   if arr.length >= 3 
    second_num = arr[1] 
    p "second_num: #{second_num}"
    n1_n3_sum = arr[0]+arr[2] 
    p "n1_n3_sum: #{n1_n3_sum}"
    if second_num > n1_n3_sum 
      return second_num + max_sum(arr[3..-1])
    else 
      return arr[0] + max_sum(arr[2..-1])
    end 
  end 
  
  p max_sum([75, 105, 120, 75, 90, 135])
  
  # first_num = 105, but 75 and 120 go to waste if we pick 105,
  # so we wont use 105
  # curr = 75 
  # [75, 90, 135] 
  # 
  
  # first_num = 75 
  # 