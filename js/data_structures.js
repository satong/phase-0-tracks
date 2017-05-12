// Release 0: Work with arrays

// declare an array of four colors
var horseColors = ["red", "blue", "yellow", "green"];
// declare an array of four horse names
var horseNames = ["Mindy", "Mandy", "Maggie", "Marge"];
// add another color to color array
horseColors.push("purple");
// add another name to horse name array
horseNames.push("Mary");

// Release 1: Build an object

// create object with the two arrays with horse names as keys and colors as values
var horseProfiles = {}
for (i = 0; i < horseColors.length; i++) {
	horseProfiles[horseNames[i]] = horseColors[i];
}

console.log(horseProfiles);
