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

// Release 2: Build Many Objects Using a Constructor
function Car(type, color, isFast, numWheels) {

	// properties
	this.type = type;
	this.color = color;
	this.isFast = isFast;
	this.numWheels = numWheels;

	// function
	this.accelerate = function() { console.log("The car accelerated!")};
}

// Release 2 driver code
var newCar = new Car("roadster", "red", true, 4);
console.log("---------");
console.log(newCar);
console.log("---------");

newCar.accelerate();
newCar.type = "minivan";
newCar.color = "green";
newCar.isFast = false;

console.log("---------");
console.log(newCar);
console.log("---------");

var newCar2 = new Car("truck", "black", false, 18)
console.log("---------");
console.log(newCar2);
console.log("---------");
