<?php // -------------------------------------------------------------------------------- PHP NOTES

// --------------------- KEY NOTES

// "<?php" 		Must be used at the beginning of the code to declare that it is PHP.
// "?/>"		Must be used at the end of the PHP code, without the backslash. 
// "index.php"	Signifies an HTML document that has PHP code written inside it.

// -------------------- Creating a variable
$varName = value


// -------------------- Common Commands
echo "String"
strlen("String");
substr("String", 0, 2);
strtoupper("String");
strtolower("String");
strpos("Haystack", "Needle");
round(1.234, 2);
rand(0, 100);


// -------------------- Conditionals
if (x < y) {
	// code code;
} elseif (x > y) {
	// code code;
} else {
	// code code;
}

switch($variable) {
	case ('case1'):
		//code code
		break;
	case('case2'):
		//code code
		break;
	default:
		//code code
}


// -------------------- Loops
for ($i = 1; $i < 10; $i++) {
	// code code;
}

foreach ($array as $item) {
	// code code;
}

while (x < y) {
	// code code
}

do {
	// code code
} while (x < y);

// -------------------- Arrays
$arrayName = array("a", "b");
count($arrayName);
sort($arrayName);
rsort($arrayName);
join("," $arrayName);


// -------------------- Functions
function functionName(argument) {
	// code code
}


// -------------------- Associative Arrays
$assocArray = array(
	'key1' => 'value1',
	'key2' => 'value2'
	);

$assocArray['key1'];


// -------------------- Classes
class className {
	public function __construct($property1, $property2) {
		$this->property1 = $property1;
		$this->property2 = $property2;
	}
	public property3
	public property4
}

class class1 extends class2 {
	$property = "new value";
}

is_a($variable, "className")
property_exists($variable, "property_name")
method_exists($variable, "method_name")






?>