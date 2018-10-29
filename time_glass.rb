def hour_glass_sum(arr)
    sum = nil 
    i = 0 
    while i < 4 
    j = 0 
      while j < 4 
          if sum.nil?
            sum = calculate_sum(arr,i,j)
          elsif calculate_sum(arr,i,j) > sum 
            sum = calculate_sum(arr,i,j)
          end 
        j += 1  
      end 
    i+=1
    end 
    sum
  end 
  
  def calculate_sum(arr,i,j)
  # print "i: "  
  # p i 
  # print "j: " 
  # p j
  # print 'arr[i][j+2]'
  # p arr[i][j+2] 
  # print 'arr[i+2][j+2]:'
  # p arr[i+2][j+2]
    arr[i][j] + arr[i][j+1]+arr[i][j+2] + arr[i+1][j+1]+
    arr[i+2][j] + arr[i+2][j+1]+arr[i+2][j+2]
  end 
  
  sub1 = [-9, -9, -9,  1, 1, 1 ]
  sub2 = [0, -9,  0,  4, 3, 2]
  sub3 = [-9, -9, -9,  1, 2, 3]
  sub4 = [ 0,  0 , 8,  6 ,6 ,0]
  sub5 = [0,  0 , 0, -2, 0 ,0]
  sub6 = [0 , 0 , 1 , 2 ,4, 0]
  
  sub_1 = [1, 1, 1, 0, 0, 0]
  sub_2 = [0, 1, 0, 0, 0, 0]
  sub_3 = [1, 1, 1, 0, 0, 0]
  sub_4 = [0 ,0, 2, 4, 4, 0]
  sub_5 = [0, 0, 0, 2 ,0 ,0]
  sub_6 = [0, 0, 1, 2, 4, 0]
  
  arr = [sub_1,sub_2,sub_3,sub_4,sub_5,sub_6]
  # print arr
  hour_glass_sum(arr)