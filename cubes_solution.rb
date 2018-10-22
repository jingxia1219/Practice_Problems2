# write all positive interger solutions for a^3+b^3 = c^3+d^3 
# all integers < 1000
def cubes_solution
    hash = {}
    result = {}
      a = 0 
      while a < 13
        b = 0 
          while b < 13 
            hash[a**3+b**3] = [a,b]
            b+=1
          end 
        a+=1
      end 
      # p hash.values.include?([12,1])
      c = 0
      hash2 = {}
      while c < 11
        d = 0 
          while d < 12
          hash2[c**3 + d**3] = [c,d]
            if hash[c**3+d**3]
            #  print 'found ya' unless hash[c**3+d**3].include?(c)
            # print 'found ya' unless hash[c**3+d**3].include?(d)
            #  p d 
                
                result[hash[c**3+d**3]+[c,d]] = true
            end 
            d+=1
          end 
          c+=1
      end 
      # p result
    
      # taxi_cabs = result.select { |el| el[0..1] = [12,1]}
      # p taxi_cabs
      # p hash2.values.uniq.include?([10,9])
      # p result.include
      p result.keys.include?([12,1,10,9])
      p result.select { |el| el.uniq.length > 2 }
    end 
    
    cubes_solution