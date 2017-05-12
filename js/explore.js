// pseudocode a js function that takes a string as a parameter and reverses the string
// reverse("hello"), for example, should return "olleh"

// function to take a string and reverse it
// input: a string
// steps:
  // find the length of the string
  // loop through the string backwards, starting the index at string length
  // add each letter together as you loop through the entire string
// output: the reversed string

function reverseString(str){
  var revStr = "";
  for (var i = str.length-1; i >= 0; i --){
    revStr += str[i];
  }
  return(revStr);
}

// driver code that calls the reverse function and stores the result in a variable
var testWord = reverseString("hello");
// driver code that prints the variable if some condition is true
if (1 == 1) {
	console.log(testWord);
}
