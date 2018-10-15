
//Monkey-patch the following methods to the Array class. Remember, we want to use prototype here.
/*
Array#transpose - where we have a two-dimensional array representing a matrix. returns the transpose

should not mutate the original array */


// eg. given: [[1,2,3],  => [[1,4],[2,5], [3,6]]
//             [4,5,6]]
Array.prototype.transpose = function () {
    if ( this.length < 1 ) {
        return [];
    } 
    const newCol = this[0].length; 
    const newRow = this.length; 
    let result = [];
    for ( let i = 0; i < this[0].length; i++ ) {
        let subArr = [];
        for ( let j = 0; j < this.length; j++) {
            subArr.push(this[j][i]);
        }
        result[i] = subArr; 
    }
    return result;
}

console.log([ [1,4],[2,5],[3,6]].transpose()); // tested and works
console.log([[1,2,3],[4,5,6]].transpose()); // tested and works

/* Array#uniq - returns a new array containing only the unique elements of the original array
the unique elements should be in the order in which they first appear
should not mutate the original array
*/
//eg. given: [1,3,2,3,5] => [1,3,2,5]
Array.prototype.uniq = function( ) {
    let uniq = [];
    for ( let i = 0; i < this.length; i++) {
        if ( !uniq.includes(this[i]) ) {
            uniq.push(this[i]);  
        };
    }
    return uniq;
}

console.log([1,3,2,5,3].uniq());
console.log([1,3,3,2,5,3].uniq()); // checked and works 


/*
Array#twoSum - returns an array of position pairs where the elements sum to zero
*/
Array.prototype.twoSum = function () {
    let result = []; 
    for ( let i = 0; i < this.length -1 ; i++ ) {
        for ( let j = i+1 ; j < this.length; j ++) {
            if ( this[i] + this[j] === 0 ) {
                result.push([i, j]);
            }
        }
    }
    return result;
}

console.log([1,2,-2,-1].twoSum()); // tested and works
console.log([1,2,3, -2,-1, 0, -3].twoSum()); // tested and works
