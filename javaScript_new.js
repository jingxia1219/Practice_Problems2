function Cat(name) {
    this.greeting = 'hi ' + name;
  }
  
  let l1=Cat("S");
  let l2 = new Cat('s2');
  let l3=Cat('s4');
  
  console.log(greeting); //going to take the l3, the latest 
  //variable defined that has greeting hi s4

  console.log(l2.greeting); //hi s2


  var num = 0;

for (let i =0l i<5; i++) {
  num += i;
}

console.log(i); // undefined cos 
// i is defined and only available in the for loop