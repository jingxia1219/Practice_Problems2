function lengthOfLongestSubstrings(str) {
    var hash = new Object();
    var currLen = 0;
    var maxLen = 0;

    for ( let i = 0; i < str.length; i++) {
        if ( hash[str[i]] == undefined) {
            currLen++;
            hash[str[i]] = i;
            if ( currLen > maxLen) {
                maxLen = currLen;
                // console.log(maxLen);
            }
        } else {
            currLen = i - hash[str[i]];
            for ( let i = 0; i < hash[str[i]]; i++) {
                delete h[str[i]];
            }
            hash[str[i]] = i;
        }
    }
    return maxLen;
}