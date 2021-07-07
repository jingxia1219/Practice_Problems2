function Node(val,next) {
    this.val = val;
    if (next === undefined) {
      this.next = null;
    } else {
      this.next = next;
    }  
  }
  
  var node2 = new Node(2)
  var node1 = new Node(1,node2)


const reverse = (node,prev) => {
  
    if (prev === undefined) {
       prev = null;
     }
    
    if (node.next === null) {
      node.next_node = prev;
      return node;
    }
     
     var next_node = node.next
    //  console.log(node)
    //  console.log(`prev: ${prev}`)
     node.next = prev;
    
     return reverse(next_node,node);
  }

  console.log(reverse(node1));