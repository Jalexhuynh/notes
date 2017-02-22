// ------------------------------------------------------------------------------ JAVASCRIPT NOTES

// -------------------- KEY NOTES

// Enables the use of Javascript on the page when it is finished loading.
// Mandatory first line!
$(document).ready() {
};

// Linking your javascript file to your HTML file. Place:
// <script type= "text/javascript" src="script.js"></script>


// -------------------- Creating a variable
var variableName = "string/number/boolean"  // Global Variable
var functionName = function() {
	var localVar = "string/number/boolean"	// Local Variable
};

// -------------------- String Methods
"String".length				// Returns the length of a string, including spaces.
"String".substring[x,y] 	// Returns a substring from index x, to index y-1.

// -------------------- Common Commands
prompt("String")	// Creates a prompt for user input.
console.log()		// Prints anything passed into it onto the console.
Math.random()		// Generates a random number from 0 to 1.
typeof variableName	// Identifies the type of a variable.

// -------------------- Conditionals
if (x > y) {
	console.log("If")
} else if (x < y) {
	console.log("Else If")
} else {
	console.log("Else")	
};

// -------------------- For Loops
for (var i=0; i<10; i++) {
	console.log(i);
}

// -------------------- While Loops
while (condition) {
	console.log("While")
};

// -------------------- Do Loops

// -------------------- Switch Cases
switch(variableName) {
	case 'case1':
		// code code;
		break;
	case 'case2':
		// code code;
		break;
	default:
		// code code;
};

// -------------------- Arrays
var arrayName = [1, 2, 3, 4]	// Creates an Array.
arrayName[index]				// Accesses the value of the array at that index.

// -------------------- Objects
// Objects can be created in 2 ways: Literal Notation, or Constructor Notation.
var objectName = {				// Object Literal Notation
	property1: 1,
	property2: 2,				// Public property
	var property3 = 3,			// Private property
	property4: function() {		// Creates a METHOD for the object.
		// code code
	};
};

var objectName2 = new Object();	// Object Constructor Notation
objectName2.property1 = 1;
objectName2.property2 = 2;


objectName.property1			// Accesses that property's value.
objectName["property1"]			// Same as above.

// -------------------- Classes
function className(propertyA, propertyB) {		// Creates a class constructor.
	this.propertyA = propertyA;
	this.propertyB = propertyB;
};

var classInstance = new className("A", "B");	// Creates a class instance.

className.prototype.newMethod 	// Adds a method to all instances of className.

// ------------------------------------------------------------------------------ JQUERY NOTES

$('#id')			// Selecting a specific HTML ID.
$('.class')			// Selecting a specific HTML Class.
$('h1, p, div')		// Selecting all of a TYPE of HTML tag.
$(this)				// Select only the object/element you are working on.

// -------------------- Events
.mouseenter		// Function runs when mouse moves into element.
.mouseleave		// Function runs when mouse moves out of element.
.click			// Function runs when selector is clicked.
.dblclick
.hover
.focus
.keydown
.ready
.on

// -------------------- Actions
.after
.animate
.before
.append
.fadeIn
.empty