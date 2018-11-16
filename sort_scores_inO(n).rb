# given an array of unsorted scores and a higest score,
# sort it in an algorithm faster than O(nlgn)

# Faster than O(nlogn), meaning we sort the array using O(N)
scores = [37, 89, 41, 65, 91, 53]
highest= 

# sort_scores(unsorted_scores, HIGHEST_POSSIBLE_SCORE)
# returns [91, 89, 65, 53, 41, 37]

# The data structure we could use is array of length K being the highest score
# index would be the score

def sort_scores(scores,highest)
sorted_arr = Array.new(highest,0)
scores.each do |el|
  # O(n)
  sorted_arr[el]+=1
  # index represents score and value represents number of the same scores 
end 
result = []
sorted_arr.each_with_index do |el,idx|
  el.times do |i| 
    result << idx 
  end 
  
end 
result
end 

p sort_scores(scores,100)