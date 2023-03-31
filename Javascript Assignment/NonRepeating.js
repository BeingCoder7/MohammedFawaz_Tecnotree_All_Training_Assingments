/*Write a JavaScript function to find the first non-repeating character in
a given string.*/
function firstNonRepeatingChar(str) {
    const charCount = {};
  
    for (let i = 0; i < str.length; i++) {
      const char = str[i];
      charCount[char] = charCount[char] ? charCount[char] + 1 : 1;
    }
  
    for (let i = 0; i < str.length; i++) {
      const char = str[i];
      if (charCount[char] === 1) {
        return char;
      }
    }
  
    return null;
  }
  
const str = 'hello world';
const firstNonRepeating = firstNonRepeatingChar(str);
console.log(firstNonRepeating); 
