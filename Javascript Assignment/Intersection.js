//Write a JavaScript function to find the intersection of two arrays.
function intersection(arr1, arr2) {
  const set1 = new Set(arr1);
  const set2 = new Set(arr2);
  const result = [];

  for (const value of set1) {
    if (set2.has(value)) {
      result.push(value);
    }
  }

  return result;
}


const arr1 = [1, 2, 3, 4, 5];
const arr2 = [4, 5, 6, 7, 8];

const result = intersection(arr1, arr2);
console.log(result); 
