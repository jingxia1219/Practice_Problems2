# write all positive interger solutions for a^3+b^3 = c^3+d^3 
# all integers < 1000
def cubes_solution
    hash = {}
    result = {}
      a = 0 
      while a < 1000
        b = 0 
          while b < 1000 
            hash[a**3+b**3] = [a,b]
            b+=1
          end 
        a+=1
      end 
      # p hash.values.include?([12,1])
      c = 0
      hash2 = {}
      while c < 1000
        d = 0 
          while d < 1000
          hash2[c**3 + d**3] = [c,d]
            if hash[c**3+d**3]
                result[hash[c**3+d**3]+[c,d]] = true
            end 
            d+=1
          end 
          c+=1
      end 
     p result.keys.select { |el| el.uniq.length > 2}
    end 
    # time compleixty O(n^2)
    cubes_solution