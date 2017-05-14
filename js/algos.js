// Release 0: Find the Longest Phrase
// write a function that takes an array of words or phrases and returns the longest word or phrase in the array
// input: array
  // store the first element of array in variable called longestElement
  // iterate through each element in the array while...
  // using conditional statement to check the length of each element.
  // longestElement variable will be updated to whichever is the longest element
// output: the variable longestElement

function longestWord(array) {
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

// Release 2: Generate Random Test Data
// Write a function that takes an integer for length, and builds and returns an array of strings of the given length
// input: integer
// create empty result array
// do integer times the following steps:
  // generate random word with length between 1-10 letters
    // to generate random word, generate the random length of the word (between 1-10)
    // for each index of the random word, select a random letter based on the corresponding letter of a random index in the string of all 26 letters
  // add word to result array
// output: result array

function randomTest(int) {
  var resultArray = [];
  for (var i=0; i < int; i++) {
    resultArray.push(randomWord());
  }
  return resultArray;
}

function randomWord() {
    var word = "";
    var possible = "abcdefghijklmnopqrstuvwxyz";
    var wordlength = getRandomInt(1,10);
    for (var i=0; i < wordlength; i++ ) {
      word += possible.charAt(Math.floor(Math.random() * possible.length));
    }
    return word;
}

// Returns a random integer between min (included) and max (included)
function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}


// Release 0 driver code:
var array = ["hatchet", "rations", "water jug", "binoculars","shotgun", "compass", "CB radio", "batteries"];
console.log(longestWord(array));

// Release 1 driver code:
var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
console.log(keyvalueMatch(object1, object2));

// Release 2 driver code:
// do 10 times: generate array, print array, feed array to "longest word" function, and print result.
for (var i = 0; i < 10; i++) {
  var newArray = randomTest(getRandomInt(1,5));
  console.log(newArray);
  console.log(longestWord(newArray));
}
