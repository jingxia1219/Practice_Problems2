// What does the below function return:

function recurse(num) {
    if ( num <=0) return [num];
    // const result = [num];
    // console.log(result);
    return [num].push(recurse(num-1));
  }
  
  recurse(10); //it returns two, cos Array.prototype.push returns
//   the length of the new array
  
// In order to use push to join two arrays, use the ...spread operater

let a = [1,2,3];
console.log(a.push(...[4,5,6])); // should return the length: 6
console.log(a); // should return [1,2,3,4,5,6]