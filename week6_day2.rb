# puts "Hello"



# Your last JavaScript (Node) code is saved below:
# // Given a dictionary and an M x N board where every node has one character.
# // Find all possible words that can be formed by a sequence of adjacent characters.
# // Note that we can move to any of 8 adjacent characters, 
# // but a word should not have multiple instances of the same node.

# let 
# let boggle = [['G', 'I', 'Z'],
#               ['U', 'E', 'K'],
#               ['Q', 'S', 'E']];
              
# findWords(boggle) // => The Following words of dictionary are present
#                   // => GEEKS
#                   // => QUIZ



              
def find_words(arr, dictionary)
    # 1.iterate through all letters in arr 
    # 2. check the first two letter combinations against the given words, 
        #   if there's a match for the  first two letters, keep going to the next letter 
          #repeat this check process after adding the next letter
        # else return early 
    result = []
    i = 0
     while i < arr.length 
      j = 0 
        while j < arr[i].length 
        # p "current letter: #{arr[i][j]}"
        pos = next_letters(arr, i,j)
        temp = arr[i][j]
          check_letters(arr,pos,temp, dictionary,result)
          j+=1
        end 
       i+=1   
      end   
       
    result 
  end 
  
  def next_letters(arr, i,j)
      pos = []
      pos << [i-1,j] if i >= 1 
      pos << [i,j-1] if j >= 1 
      pos << [i-1,j-1] if i >= 1 && j >= 1
      pos << [i+1,j] if arr[i+1]
      pos << [i,j+1] if arr[i][j+1]
      pos << [i - 1,j+1] if i >= 1 && arr[i - 1][j+1]
      pos << [i+1,j-1] if j >= 1 && arr[i+1] 
      pos << [i+1,j+1] if arr[i+1] && arr[i+1][j+1]
      # p "upper right letter: #{arr[i+1][j-1]}" if j >= 1 && arr[i+1] 
      # p pos
      pos 
  end 
  
  def check_letters(arr,pos,temp, dictionary,result)
    no_match = false 
       until no_match 
  
        pos.length.times do |i|
        # p "position : #{pos}"
        x = pos[i][0]
        y = pos[i][1]
            p "x: #{x} ; y: #{y}"
            p " arr[x][y]: #{arr[x][y]}"
          temp += arr[x][y] #added the next letter 
          # p "after adding next letter: #{temp}"
          temp_length = temp.length 
          dictionary.each_with_index do |word,idx|
            # p "word[0...temp_length]: #{word[0...temp_length]} VS temp: #{temp}"
           if word[0...temp_length] == temp 
             if temp.length == word.length 
                result << temp
                break
             end 
            # p "x: #{x} ; y: #{y}"
            pos = next_letters(arr, x,y)
            check_letters(arr, pos,temp, dictionary,result)
            # p "next pos: #{pos}"
             #found a match for the current letters 
          elsif idx == dictionary.length - 1 && word[0..temp_length - 1] != temp 
            temp = temp[0...-1]
            no_match = true 
           end 
          end 
         end 
      end 
  end 
  
  dictionary = ["GEEKS", "FOR", "QUIZ", "GO"];
  arr = [['G', 'I', 'Z'],
         ['U', 'E', 'K'],
         ['Q', 'S', 'E']];
  
  p find_words(arr, dictionary)
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  # // // Installed npm packages: jquery underscore request express
  # // // jade shelljs passport http sys lodash async mocha chai sinon
  # // // sinon-chai moment connect validator restify ejs ws co when
  # // // helmet wrench brain mustache should backbone forever debug jsdom
  
  # // // var _ = require('underscore');
  
  # // // var evens = _.reject([1, 2, 3, 4, 5, 6], (num) => num % 2 != 0);
  
  # // // console.log("Evens");
  # // // console.log(evens);
  
  # // // console.log(0.1 + 0.2);
  # // // console.log(0.1 + 0.2 == 0.3);
  
  # // // You are given a two - dimensional array(matrix) of 
  # // // potentially unequal height and width containing only 0s and 1s.
  # // // Each 0 represents land, and each 1 represents part of a river.
  # // // A river consists of any number of 1s that are either horizontally or vertically adjacent
  # // // (but not diagonally adjacent).The number of adjacent 1s forming a river determines its size.
  # // // Write a function that returns an array of the sizes of all rivers represented in the input matrix.
  # // // Note that these sizes do not need to be in any particular order.
  
  # // // Sample Input:
  
  # // // [
  # // //   [1, 0, 0, 1, 0],
  # // //   [1, 0, 1, 0, 0],
  # // //   [0, 0, 1, 0, 1],
  # // //   [1, 0, 1, 0, 1],
  # // //   [1, 0, 1, 1, 0]
  # // // ]
  # // // Sample Output:
  
  # // // => [1, 2, 2, 2, 5]
  
  
  # // // when I traverse and come to a 1, check for adjacent 1s, increment count
  # // // when I come to a 0, stop count in that direction
  # // // pathfinding algo:
  # //   // use a queue to keep track of postions of adjacent 1s
  # //   // use a count to keep track of number of visited 1s
  # //   // when queue is empty, save count to results
  # //   // keep track of visited 1s. If I encounter a 1 already seen, then just move on.
  # // // queue and visited will keep track of duples that represent positions in arrays
  
  
  # // function riverWidths(matrix) {
  # //   let queue = [];
  # //   let currentCount;
  # //   let visited = [];
  # //   let result = [];
  
  # //   for(let i = 0; i < matrix.length; i++) {
  # //     for(let j = 0; j < matrix[0].length; j ++) {
  # //       if (matrix[i][j] == 1 && !visited.includes([i, j])) {
  # //         queue.push([i, j]);
  # //         currentCount = 0;;
  # //         while (queue.length > 0) {
  # //           let [x,y] = queue.shift();
  # //           let checkPos = getPos(x, y, matrix.length, matrix[0].length );
  # //           for (let k = 0; k < checkPos.length; k++) {
  # //             x = checkPos[k][0];
  # //             y = checkPos[k][1];
  # //             if (matrix[x][y] == 1) {
  # //               currentCount += 1;
  # //               if (!visited.includes(checkPos[k])) {
  # //                 queue.push(checkPos[k])
  # //                 visited.push(checkPos[k])
  # //               }
  # //             }
  # //           }
  # //         result.push(currentCount);
  # //         }
  # //       }
  # //     }
  # //   }
  
  # //  return result;
  # // };
  
  # // function getPos(i, j, iBound, jBound) { // takes in 2 ints, returns arr of positions
  # // let positions = [];
  
  # // if (j < jBound) {positions.push([i, j + 1]); }
  # // if (i < iBound) {positions.push([i + 1, j]); }
  # // if (i > 0) { positions.push([i - 1, j]); }
  # // if (j > 0) { positons.push([i, j - 1]); }
  
  # // return positions;
  # // }
  
  # // console.log(riverWidths([
  # //   [1, 0, 0, 1, 0],
  # //   [1, 0, 1, 0, 0],
  # //   [0, 0, 1, 0, 1],
  # //   [1, 0, 1, 0, 1],
  # //   [1, 0, 1, 1, 0]
  # // ]));
  
  
  
  
  
  
  
  
  
  
  