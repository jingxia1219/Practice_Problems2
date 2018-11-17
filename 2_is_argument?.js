//  Arguments and Call
//  Write a simple function in JavaScript to tell whether 2 is a passed parameter or not.

function isTwoPassed(args) {
    for (let i = 0; i< arguments.length; i ++) {
        if (arguments[i] === 2) {
            return true;
        }
    }
    return false;
}

console.log(isTwoPassed(1,3)); 
console.log(isTwoPassed(1,3,2)); 
