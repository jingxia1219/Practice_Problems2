
function myShuffle(arr) {
    var idx1;
    var idx2;
    var temp;
    for (let i = 0; i < arr.length; i++) {
      idx1 = Math.floor(Math.random()*arr.length);
      idx2 = Math.floor(Math.random()*arr.length);
      if (idx1 === idx2) {
        continue;
      }
      temp = arr[idx1];
      arr[idx1] = arr[idx2];
      arr[idx2] = temp;
     }
     return arr;
    }
   
  
//   TIme O(n)
// Space O(1)
  console.log(myShuffle([1,2,3,4,5]));
  