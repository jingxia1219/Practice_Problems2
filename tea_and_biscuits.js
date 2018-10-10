// ask the user if they want tea
// wait for an answer and ask the user if they want some biscuits
// print out their reply 

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits () {
    let first, second; 
    reader.question('Would you like some tea?', (res) => {
        first = res;
        console.log(`You replied ${res}.`);
        reader.question('Would you like some biscuits?', (res) => {
        second = res;
        console.log(`you replied ${res}.`);
            reader.close();
        const firstRes = (first === 'yes') ? 'do' : 'don\'t';
        const secRes = (second === 'yes') ? 'do' : 'don\'t';
        console.log(`You ${firstRes} want some tea and you ${secRes} want some biscuits.`)
    });

    });
    

}

teaAndBiscuits();