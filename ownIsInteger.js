// Number.isInteger(5);
function isInteger2(arg) {
  if (typeof(arg) === 'number') {
    return true;
  }
  return false;
}


function isInteger1(x) {
    return (x ^ 0 ) === x; 
}

console.log(isInteger1('a')); // false
console.log(isInteger1(3)); // true