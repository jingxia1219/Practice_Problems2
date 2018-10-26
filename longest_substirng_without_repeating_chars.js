function lengthOfLongestSubstring(str) {
    var hash = new Object();
    var currLen = 0;
    var maxLen = 0;
    for ( let i = 0; i < str.length; i++) {
        if ( hash[str[i]] == undefined) {
            console.log('currentHash', hash)
            console.log('str[i]', str[i])
            currLen++;
            console.log('currLen', currLen)
            hash[str[i]] = i;
            console.log("hash",hash);
            if ( currLen > maxLen) {
                console.log('currLen is greater than maxLen', currLen);
                maxLen = currLen;  
            }
        } else {
            currLen = i - hash[str[i]];
            for ( let j = 0; j < hash[str[i]]; j++) {
              if (hash[str[j]] === j) {
               
               
              }
            }
            hash[str[i]] = i;
            console.log("hash2",hash);
        }
    }
    return maxLen;
}
console.log("answer",lengthOfLongestSubstring("abcabcbb"));