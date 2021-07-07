/*
Instructions
Array#myEach(callback) - receives a callback function and executes the callback for each element in the array
Note that JavaScript's forEach function has no return value (returns undefined)
Array#myMap(callback) - receives a callback function, returns a new array of the results of calling the callback function on each element of the array
should use myEach and a closure
Array#myReduce(callback[, initialValue]) - (like Ruby's Array#inject) receives a callback function, and optional initial value, returns an accumulator by applying the callback function to each element and the result of the last invocation of the callback (or initial value if supplied)
initialValue is optional and should default to the first element of the array if not provided
examples:
*/


Array.prototype.myEach = function(cb) {
    for (let i = 0; i < this.length; i++) {
        cb(this[i]);
    }
};

console.log([1, 2, 3].myEach(function(el) {
    return (el * el);
})); // tested and works

Array.prototype.myMap = function(cb) {
    let result = []
    for (let i = 0; i < this.length; i++) {
        result.push(cb(this[i]));
    }
    return result;
}

console.log([1, 2, 3].myMap(function(el) {
    return (el * el);
}));

Array.prototype.myReduce = function(cb, acc) {
    var i = 0;
    if (acc === undefined) {
        let acc = this[0];
        i = 1;
    }
    for (i < this.length; i++;) {

    }
}

Array.prototype.myReduce = function(cb, optionalAcc) {
    let acc = null;
    let i = 0;
    if (optionalAcc) {
        acc = optionalAcc;
        // console.log("a", acc);
    } else {
        acc = this[0];
        // console.log("b", acc);
        i++;
    }
    // console.log(acc);
    // console.log(i);
    for (let j = i; j < this.length; j++) {
        // console.log("i", i;)
        console.log("acc1", acc);
        acc = cb(acc, this[j]);
    }
    console.log("acc", acc);
    return acc;
}

console.log([2, 3, 4].myReduce(function(acc, el) {
    return (acc * el);
}));

console.log([1, 3, 4].myReduce(
    function(acc, el) {
        return (acc + el);
    }, 1
));

console.log([1, 2, 3].myReduce(function(acc, el) {
    return acc + el;
}, 25));