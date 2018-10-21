function Cat(name) {
    this.greeting = 'hi ' + name;
  }
  
  let l1=Cat("S");
  let l2 = new Cat('s2');
  let l3=Cat('s4');
  
  console.log(greeting); //going to take the l3, the latest 
  //variable defined that has greeting hi s4

  console.log(l2.greeting); //hi s2