// an example of closure
// closure: essentially an inner function that has access to the variable and the scope of the 
// outter funciton 

function outter(arg) {
    var a = arg;
    function inner() {
        return (a*2);
    }
    return inner();
}

console.log(outter(3));

for (let i = 0; i < 5; i++) {
	setTimeout(function() { console.log(i); }, i * 1000 );
}

for (var i = 0; i < 5; i++) {
	setTimeout(function() { console.log(i); }, i * 1000 );
}