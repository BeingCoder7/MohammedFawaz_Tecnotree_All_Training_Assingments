/*Write a JavaScript program to sort an array of objects based on a
specified property*/

function sortByProperty(arr, property) {
    return arr.sort((a, b) => {
      if (a[property] < b[property]) {
        return -1;
      }
      if (a[property] > b[property]) {
        return 1;
      }
      return 0;
    });
  }
  
  const users = [
    { name: 'John', age: 30 },
    { name: 'Jane', age: 25 },
    { name: 'Bob', age: 35 },
    { name: 'Alice', age: 28 }
  ];
  
  const sortedUsers = sortByProperty(users, 'name');
  console.log(sortedUsers);
  