function bracketValidator(str) {
    var obj = new Object();
    obj['curlyOpener'] = obj['bracketOpener'] = obj['parenOpener'] = obj["curlyCloser"] = obj["bracketCloser"] = obj["parenCloser"] = 0;
    var lastOpen; 
  
    for (let i = 0; i < str.length; i ++) {
       if (str[i] === '{') {
         obj["curlyOpener"]++;
         lastOpen = "curly";
      }
      if (str[i] === '}') {
         obj["curlyCloser"]++;
            if (lastOpen !== "curly" && lastOpen !== null) {
           return false;
         }
        lastOpen = null;
      }
      if (str[i] === '[') {
         obj["bracketOpener"]++;
         lastOpen = 'bracket';
      }
       if (str[i] === ']') {
         obj["bracketCloser"]++;
            if (lastOpen !== "bracket" && lastOpen !== null) {
           return false;
         }
         lastOpen = null;
      }
      if (str[i] === '(') {
         obj["parenOpener"]++;
         lastOpen = 'paren'
      }
      if (str[i] === ')') {
         obj["parenCloser"]++;
         if (lastOpen !== "paren" && lastOpen !== null) {
           return false;
         }
         lastOpen = null;
      }
    }
      if (obj['curlyOpener'] !== obj['curlyCloser'] || obj['parenOpener'] !== obj['parenCloser'] || obj['bracketOpener']!== obj['bracketCloser']) {
        return false;
      }
      return true;
  }