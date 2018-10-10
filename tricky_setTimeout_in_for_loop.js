console.log('below using var');
const arr = [1, 2, 3, 4, 5];

for (var i = 0; i < arr.length; i++) {
    console.log("a", i);
    setTimeout(function () {
        console.log('b', `${i}`);
    }, (i + 1) * 1000);
    console.log("c", i);
}
// console.log("d",i)

// a0 c0 
for (j = 1; j < 5; j++) {
    console.log(j);
}

// will print out

// a 0
// c 0
// a 1
// c 1
// a 2
// c 2
// a 3
// c 3
// a 4
// c 4
// 1
// 2
// 3
// 4
// => undefined
// b 5
// b 5
// b 5
// b 5
// b 5

// but if we change var to let , 
// be will be printed 1 2 3 4 5 in the end , as the scope of let is the block
// scope of var is globe 

