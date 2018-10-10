const readline = require('readline');
const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function askName() {
reader.question("What is your name?", function(answer) {
    console.log(`Hello ${answer}!`);
    //reader.close(); //adding this line will close the program after it runs through the code
    //otherwise it will be waiting for your input even after the program reaches last line of code
    console.log("Last program line"); // this will 
    //be executed after hello'name' because within 
    // the function itself, it's synchronous
});
}

// the purpose of this exercise is to demonstrate 
// asynchronous, as Last program line will print before 
// it logs hello ${answer} as it wont wait for the answer input
// reader.open();
function addTwoNumbers(callback) {
    reader.question("Enter #1: ", function(string1){
        reader.question("Enter #2: ", function(string2) {
            const n1 = parseInt(string1); //answer is a string, need to convert
            const n2 = parseInt(string2); // to interger 
            callback(n1+n2);
            reader.close();
        });
    });
}

askName();
addTwoNumbers(function(result) {
    console.log(result);

});