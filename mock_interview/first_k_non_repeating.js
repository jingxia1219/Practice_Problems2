let str = "ABCDBAGHCHFAC";
let k = 3;

function firstKNonRepeating(str, k) {
    let hash = {};
    let result = [];
    for (let i = 0; i < str.length; i++) {
        if (hash[str[i]]) {
            hash[str[i]]++;
        } else {
            hash[str[i]] = 1;
        }
    }
    for (let key in hash) {
        if (result.length === k) return result;
        if (hash[key] === 1) {
            result.push(key);
        }
    }
    return result;
}

console.log(firstKNonRepeating(str, k)); // => D G F