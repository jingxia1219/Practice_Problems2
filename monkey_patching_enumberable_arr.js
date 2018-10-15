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
        for ( let i = 0; i < this.length; i ++) {
            cb(this[i]);
        }
};

[1,2,3].myEach(function (el) {
    console.log((el*el)); 
}); // tested and works

