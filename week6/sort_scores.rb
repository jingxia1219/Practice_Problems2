# given an arr of unsorte scores and a highest score, sort the scores
# beat o(nlogn)time complexity, you can ignore the time/space complexity associated 
# with higest score and see it as a constant
def sort_scores(scores,highest)
    arr = Array.new(highest) {0}
    result = []
    # O(n)
    scores.each do |score|
      arr[score]+=1
    end 
    p arr
    arr.each_with_index do |i,idx|
      next if i < 1
      p arr[i]
      i.times { result << idx }
    end 
    result 
  end 
  
  p  sort_scores( [37, 89, 41, 65, 91, 53],100)