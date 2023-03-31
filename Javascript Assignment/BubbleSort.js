//Write a JavaScript function to implement a bubble sort algorithm.
function bubbleSort(arr) {
    const len = arr.length;
  
    for (let i = 0; i < len - 1; i++) {
      for (let j = 0; j < len - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          [arr[j], arr[j + 1]] = [arr[j + 1], arr[j]];
        }
      }
    }
  
    return arr;
  }
  

const numbers = [3, 1, 4, 2, 6, 5];
const sorted = bubbleSort(numbers);
console.log(sorted);
