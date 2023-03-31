//Write a JavaScript program to find the sum of all numbers in an array.
function sumArray(arr) {
    let sum = 0;
    for (let i = 0; i < arr.length; i++) {
      if (typeof arr[i] === 'number') {
        sum += arr[i];
      }
    }
    return sum;
  }
  

const numbers = [1, 2, 3, 4, 5];
const sum = sumArray(numbers);
console.log(sum);
