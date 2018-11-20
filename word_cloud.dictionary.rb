# takes in a string and return a 
# hash of word as key(case insensitive), value represents number of occurrance 
# 1. split by space to get words 

def word_cloud(str)
    str = str.downcase #make it case insensitive
    words = str.split(" ")
    hash = Hash.new {0}
    # O(n) n being the number of words in the string
    words.each do |word|
      word =  remove_punctuations(word)
      # O(k) k being the length of the world 
      hash[word]+=1
    end 
    hash
  end 
  
  # given '(name:?)' return 'name'
  def remove_punctuations(str)
    punctuations = [",",'.',";",":","!","?","(",")","-","'"]
    chars = str.chars 
    chars.delete_if {|char| punctuations.include?(char) }
    chars.join("")
  end 
  
  p remove_punctuations('(name:?)')
  
  p word_cloud("After beating the eggs, Dana read the next step:
  Add milk and eggs, then add flour and sugar.")
  p word_cloud("Alright. I'll write my own examples, examples.")