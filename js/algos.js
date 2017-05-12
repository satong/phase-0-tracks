// Release 0: Find the Longest Phrase
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// input: array
  // store the first element of array in variable called longestElement
  // iterate through each element in the array while...
  // using conditional statement to check the length of each element.
  // longestElement variable will be updated to whichever is the longest element
// output: the variable longestElement

function longestPhrase(array){
  var longestElement = array[0];
  for (var i = 1; i < array.length; i++) {
    if (longestElement.length < array[i].length) {
      longestElement = array[i];
    }
  }
  return longestElement;
}

// Release 0 driver code:
var array = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"];
console.log(longestPhrase(array));
