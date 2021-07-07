function bracketValidator(str) {
    var obj = new Object();
    obj['curlyOpener'] = obj['bracketOpener'] = obj['parenOpener'] = obj["curlyCloser"] = obj["bracketCloser"] = obj["parenCloser"] = 0;
    var lastOpen = []; 
//   Space O(n)
    for (let i = 0; i < str.length; i ++) {
        // Time O(n)
       if (str[i] === '{') {
         obj["curlyOpener"]++;
         lastOpen.unshift("curly");
      }
      if (str[i] === '}') {
         obj["curlyCloser"]++;
            if (lastOpen[0] !== 'curly' ) {
           return false;
         }
        lastOpen.shift();
      }
      if (str[i] === '[') {
         obj["bracketOpener"]++;
         lastOpen.unshift('bracket');
      }
       if (str[i] === ']') {
         obj["bracketCloser"]++;
            if (lastOpen[0] !== 'bracket') {
           return false;
         }
         lastOpen.shift();
      }
      if (str[i] === '(') {
         obj["parenOpener"]++;
         lastOpen.unshift('paren');
      }
      if (str[i] === ')') {
         obj["parenCloser"]++;
         if (lastOpen[0] !== 'paren') {
           return false;
         }
         lastOpen.shift();
      }
    }
      if (obj['curlyOpener'] !== obj['curlyCloser'] || obj['parenOpener'] !== obj['parenCloser'] || obj['bracketOpener']!== obj['bracketCloser']) {
        return false;
      }
      return true;
  }
  
   bracketValidator("[{]}")