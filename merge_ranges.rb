def merge_ranges(meetings)

    # Merge meeting ranges.
     sorted = meetings.sort_by { |el| el.first }
    # O(nlogn) sorting
    result = []
    (meetings.length-1).times do |i|
    # O(n)
      if sorted[i].last < sorted[i+1].first 
        result << sorted[i]
      elsif sorted[i].last > sorted[i+1].last
        sorted[i+1] = sorted[i]
        result << sorted[i] if (i+1) == sorted.length - 1
      else 
        sorted[i+1][0] = sorted[i].first 
        # p sorted[i+1][0]
        result << sorted[i+1] if (i+1) == sorted.length - 1
      end 
    end 
    result 
    # space O(n)
end


# meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]] 
# p merge_ranges(meetings) # [[0, 1], [3, 8], [9, 12]]
# p merge_ranges([[0,14],[9,12]]) # [[0, 14]]
# p merge_ranges([[0, 1], [3, 5], [4, 8], [10, 12], [9, 14]]) #[[0, 1], [3, 8], [9, 14]]
# p merge_ranges([[1,3],[2,4]])
# p merge_ranges([[1,2],[2,3]])
# p merge_ranges([[1,5],[2,3]])
# p merge_ranges([[1, 10], [2, 6], [3, 5], [7, 9]])

# solution below: 
def merge_ranges(meetings)
  # sort by start time
  sorted_meetings = meetings.sort 
  merged_meetings = [sorted_meetings[0]]

  meetings[1..-1].each do |current_start, current_end|
    prev_start, prev_end = merged_meetings[-1]
    if current_start < prev_end 
        merged_meetings[-1][-1] = [current_end, prev_end].max
        # p merged_meetings
    else 
        merged_meetings << [current_start,current_end]
    end 
  end 
  merged_meetings
end

meetings = [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]] 
p merge_ranges(meetings) # [[0, 1], [3, 8], [9, 12]]
p merge_ranges([[0,14],[9,12]]) # [[0, 14]]
p merge_ranges([[0, 1], [3, 5], [4, 8], [10, 12], [9, 14]]) #[[0, 1], [3, 8], [9, 14]]
p merge_ranges([[1,3],[2,4]]) #[1,4]
p merge_ranges([[1,2],[2,3]]) #[1,3]
p merge_ranges([[1,5],[2,3]]) #[1,5]
p merge_ranges([[1, 10], [2, 6], [3, 5], [7, 9]]) #[1,10]
