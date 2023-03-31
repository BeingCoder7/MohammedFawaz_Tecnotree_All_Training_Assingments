/*Write a JavaScript program to find the missing number in an array of
integers.*/
function findMissingNumber(arr) {
    const n = arr.length + 1;
    const expectedSum = (n * (n + 1)) / 2;
    const actualSum = arr.reduce((acc, val) => acc + val, 0);
    return expectedSum - actualSum;
  }

const numbers = [1, 2, 3, 5, 6, 7, 8, 9];
const missing = findMissingNumber(numbers);
console.log(missing); 
