const ob1 = new Object();
ob1.name = "jing";
const ob2 = new Object();
ob2.name = "jing";
const ob3 = new Object();
ob3.name = "not jing";

function checkObjectEquality(ob1, ob2) {
    if (Object.getOwnPropertyNames(ob1).length !== Object.getOwnPropertyNames(ob2).length) {
        return false;
    }
    const properties = Object.getOwnPropertyNames(ob1);
    const length = properties.length;
    for (let i = 0; i < length; i++) {
        if (ob1[properties[i]] !== ob2[properties[i]]) {
            return false;
        }
    }
    return true;
}

console.log(checkObjectEquality(ob1, ob2)); // tested and works 
console.log(checkObjectEquality(ob1, ob3)); // tested and works