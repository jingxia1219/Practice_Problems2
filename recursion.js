function range(start, end) {
    if (start === end) {
        return start;
    };
    return [start].concat(range(start + 1, end))
}

console.log(range(1, 4));

function sumRec(arr) {
    if (arr.length === 1) {
        return arr[0];
    }
    return arr[0] + sumRec(arr.slice(1));
}

console.log(sumRec([1, 2, 3])); // tested and works

function exponent(base, exp) {
    if (exp === 1) {
        return base;
    }
    return base * exponent(base, exp - 1);
}

console.log(exponent(2, 3)); //tested and works

function fibonacci(n) {
    let fibs = [1, 1]
    if (n <= 2) {
        return fibs.slice(2 - n);
    }
    return fibonacci(n - 1).concat(parseInt(fibonacci(n - 1).slice(-1)) + parseInt(fibonacci(n - 1).slice(-2)[0])); //.slice(-2) gets the last two elements
}

console.log(fibonacci(2).slice(-1));
console.log(fibonacci(3));
console.log(fibonacci(4)); // tested and works

function deepDup(arr) {
    
}