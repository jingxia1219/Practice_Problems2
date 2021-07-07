# in a line where people are denoted the position they are in the line
# e.g [1,2,3,4,5] is the initial status of a queue 
# everyone can bribe the person in front of them to swap positions with them
# every one can bribe twice  
# return the min number of bribes it takes for a queue to reach the current position
# e.g [2,1,5,3,4] is achieved from [1,2,3,4,5] => [2,1,3,4,5] (1 swap)
# => [2,1,3,5,4] (2 swaps) => [2,1,5,3,4] (3 swaps)
# if a queue's current status is unachievable within the rule where everyone can
# only bribe twice, return 'Too chaotic'

def minimum_bribes(q)
    bribe_counts = 0
    # num_people = q.length 
    # initial_state = (1..q).to_a
     (q.length - 1).times do |i|
      return 'Too chaotic' if i + 1 < q[i] - 2
      end 
  
    (q.length - 1).times do |i|
      until i + 1 == q[i]
        q[i],q[i+1] = q[i+1],q[i]
        bribe_counts += 1 
      end 
    end 
    q.each_with_index do |el,idx|
      raise 'Too chaotic' if idx + 1 < el - 2
  
    end 
    bribe_counts
  end
  # [1,2,3,4,5]
  # [1,3,2,4,5]
  q3 = [3,1,2,4,5]
  # reverse 
  q = [2,1,5,3,4] 
  # [1,2,5,3,4]
  # [1,2,3,5,4]
  
  
  q2 = [2,5,1,3,4]
  # [5,2,1,3,4]
  
  p minimum_bribes(q)
  p minimum_bribes(q2)
  p minimum_bribes(q3)
  
