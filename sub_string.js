// You're given two strings as the input , the second shorter than the first and optionally
// the 2nd string includes a wildcard represented by *,
// return the starting index of the substring that matches the second string
// if no match found, return -1 

function firstOccurrence(str1, str2) {
    // write a helper function that returns all the substrings for str1 with startIndex
    let substrings = subStrings(str1);
    // console.log(substrings);
    for (let j = 0; j < substrings.length; j++) {
        // console.log(blurEqual( substrings[j].slice(0,1)[0], str2 ));
        if (blurEqual(substrings[j].slice(0, 1)[0], str2)) {
            return substrings[j].slice(1, 2)[0];
        }
    }
    return -1; //tested and works
}

function subStrings(str) {
    result = []
    for (let i = 0; i < str.length; i++) {
        for (let j = i; j < str.length; j++) {
            result.push([str.slice(i, j + 1), i]);
        }
    }
    return result // tested and works 
}

// trying to figure out the blur_equal function 
function blurEqual(str1, str2) {
    // want to return true for 'abc' === 'a*c'
    for (let i = 0; i < str2.length; i++) {
        if (str1[i] !== str2[i] && str2[i] !== '*') {
            return false;
        }
    }
    return true;
}

firstOccurrence('abapple', 'p*l') // returns 3 CORRECT 

firstOccurrence("juliasamanthasamanthajulia", "ant*as"); // returns 8 CORRECT
