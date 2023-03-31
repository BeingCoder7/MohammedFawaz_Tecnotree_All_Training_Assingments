//Write a JavaScript function to find the nth largest element in an array.
function nthLargest(arr, n) {
    if (n > arr.length) {
      return null;
    }
  
    arr = arr.sort((a, b) => b - a);
    return arr[n - 1];
  }
  

const numbers = [4, 2, 8, 1, 6, 9];
const nthLargestElement = nthLargest(numbers, 3);
console.log(nthLargestElement); // Output: 6
