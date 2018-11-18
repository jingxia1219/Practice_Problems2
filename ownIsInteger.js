Number.isInteger(5);
function isInteger2(arg) {
  if (typeof(arg) === 'number') {
    return true;
  }
  return false;
}
console.log(isInteger2('a')); // false
console.log(isInteger2(3)); // true
