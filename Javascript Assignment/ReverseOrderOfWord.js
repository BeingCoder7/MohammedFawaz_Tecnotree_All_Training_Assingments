/*Write a JavaScript program to reverse the order of words in a given
string.*/


function reverseWords(str) {
    return str.split(' ').reverse().join(' ');
  }
  

const str = 'Hello world, how are you?';
const reversed = reverseWords(str);
console.log(reversed); 