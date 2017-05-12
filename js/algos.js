// Release 0: Find the Longest Phrase
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// input: array
  // store the first element of array in variable called longestElement
  // iterate through each element in the array while...
  // using conditional statement to check the length of each element.
  // longestElement variable will be updated to whichever is the longest element
// output: the variable longestElement

function longestPhrase(array) {
  var longestElement = array[0];
  for (var i = 1; i < array.length; i++) {
    if (longestElement.length < array[i].length) {
      longestElement = array[i];
    }
  }
  return longestElement;
}

// Release 1: Find a Key-Value Match
// write a function that takes two objects and checks to see if the objects share at least one key-value pair
// input: object 1, object 2
// take object 1 and iterate through each key-value pair
// determine if the keys in object 1 are valid
// RETURN true if value of object 1 key == value of the same key in object 2
// else return false

function keyvalueMatch(object1, object2) {
  for (var k in object1) {
    if (object1.hasOwnProperty(k)) {
      if (object1[k] == object2[k]) {
        return true;
      }
    }
  }
  return false;
}


// Release 0 driver code:
var array = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"];
console.log(longestPhrase(array));

// Release 1 driver code:
var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
console.log(keyvalueMatch(object1, object2));
