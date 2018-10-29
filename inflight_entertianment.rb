require 'set'
# Given a flight time in mins, and an array of movies' length in mins 
# return a boolean indicating if two movies can add up to the exact flight time 
def inflight_entertainment(flight_length,movies)
# method 1:
# a slow way to start is brute force, find all pairs with O(n!)
# i = 0 
  # while i < movies.length - 1
  #  j = i 
  #   while j < movies.length 
  #     return true if movies[i] + movies[j] == flight_length 
  #     j+=1
  #   end 
  #   i+=1
  #  end 
  #  false 
#   method 2:
    # when we are going over each el in the movies, if there is another movie time
    # equal flight_time - current_movie, then that's a good combo
    # if we make a hash/set, the look up time is going to be o(1)
    # we have two separate loop, one is too going over all els to make the hash/set
    # second is to go over each el, and use the hash/set to look up see if there's a match
  set = Set.new
  movies.each { |movie| set << movie }
  movies.each do |movie|
    return true if set.include?(flight_length - movie)
  end 
  false 
end 

flight_length = 260
movies = [120,101,141,181,80]

p inflight_entertainment(flight_length, movies )