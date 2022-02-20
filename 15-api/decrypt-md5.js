var ReverseMd5 = require('reverse-md5')
var rev = ReverseMd5({
    lettersUpper: false,
    lettersLower: true,
    numbers: true,
    special: false,
    whitespace: true,
    maxLen: 12
})
 
rev('9b90f0bf6d48358868657cde76c96b4c') 

console.log(rev)