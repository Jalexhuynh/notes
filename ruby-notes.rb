# -------------------------------------------------------------------------------------- RUBY NOTES

# ---------------------- KEY NOTES

=begin
Multi Line Comment
=end

# Ruby automatically returns the last expression it evaluates, making some "return" statement unnecessary!

# Ruby enables large numbers to use underscores. Such as 1_000_000.

# ---------------------- Creating a variable
var_name = "Value"							# Typically named in lower_case style.
print "Prints the argument to the screen."
puts "Adds a blank line after printing."

var_name ||= "Conditional Assigment"		# Assigns value only if var_name has no value.

# ---------------------- Common String Methods
"String".length 		# Returns the length of the string.	
"String".reverse		# Returns the reverse of the string.
"String".upcase			# Capitalizes the whole string.
"String".downcase		# Lowercases the whole string.
"String #{var_name}"	# Substitutes the placeholder for its string value. 
"String"[0]				# First letter of the string.
"String"[1..-1]			# 2nd character to the end (inclusive) of the string.

# ---------------------- Common Commands
gets.chomp 				# Promps the user for input.
variable.method! 		# Instructs the method to alter the variable itself, instead of a new instance.
var_name.include? "a"	# Will return "true" if var_name contains "a".
var_name.gsub!(/a/,"b")	# gsub = "global substitution"
						# This will convert all instances of "a" into "b".
var_name.to_s 			# Converts the variable type to string. Can use for symbols.
var_name.to_str			# Same as above.
"String".to_sym			# Converts a string to a symbol.
"String".intern			# Same as above.
var_name.to_i			# Converts the variable type to an integer.
var_name.to_a			# Converts the variable type to an array.
Integer(var_name)

var_name1 <=> var_name2	# Compares if var_name1 comes before (-1), the same (0) or after (1) the second.

var_name.sort! { |first, second|	# Default. Sorts in ascending order.
	first <=> second
}

var_name.sort! { |first, second|	# Sorts in descending order.
	second <=> first
}

"A".upto("Z") { |letters|	# Runs a code on all letters from A to Z.
	puts letters, " "		# Can also use "downto".
}

var_name.respond_to?(:method_name)	# Checks if true/false that var_name can recieve the method.

# ---------------------- Conditionals
if x < y
	# code code
elsif x > y
	# code code
else 
	# code code
end


var_name = false
unless var_name					# Will check if something is false, and then runs.
	puts "This will run."		# This is the opposite of "if".
else
	puts "This will not run."
end


case var_name
when "option2"
	# code code
when "option2"
	# code code
else
	# code code
end

expression x < y ? "True code" : "False code"
# This runs the true code if x < y is true, or false code if false.

# ---------------------- Loops
counter = 1

while counter < 10		# While loops are for undetermined amounts of loop code.
	# code code			# They will run until they change to "false".
	counter += 1
end

until counter > 10		# Nearly identical to while, only in reverse. 
	# code code
	counter += 1
end

for num in 1...10 		# ... means to exclude the final number.
	# code code			# ..  means to include the final number.
end

loop do 				# Loop format #1
	#code code
	next if x < y		# Instructs the loop to skip this iteration if condition is met.
	break if x = y
end
	
loop {  				# Loop format #2
	#code code
}

10.times {
	# code code			# Runs a code for a certain number of times.
}

# ---------------------- Arrays
array_name = [[1, 2, 3], [1, 2, 3, 4, 5]]	# Creates an array.

array_name.each { |item|		# Iterates over each "item" in the array.
	# code code					# Can use any word for the "item" placeholder.
}								# Can also use the do/end format.

array_name.each { |item|		# Iterating over multidimensional arrays.
	sub_array = element
	sub_array.each { |item|
		# code code
	}
}

array_name = string.split(" ")	# Will separate a string > array of words, seperated by specified character.

array_name[0]				# Accesses a value at that array index.
array_name << "item"		# Pushes a new item into an array or string.
array_name.collect { |item|	# Runs some code on each item, and returns values in a new array.
	# code code 			# Can also use ".map" to do the same thing.
}

# ---------------------- Hashes
hash_name = {  				# Creates a hash with keys and values.
	"key1" => "value1",		# Utilizing the "hash rocket" style.
	"key2" => "value2"		# This is outdated! Use the new symbol notation (see below)!
}

hash_name = Hash.new		# Can also use this to create a new hash.
hash_name["key1"]			# Accesses the hash value for that key.
							# If no key/value, then assigns this new value to a new key in the hash.

hash_name.each { |key, value|	# Iterates over each key/value pair in the hash.
	puts hash_name[key]			# Prints out all the key values.
	puts value 					# Same as above.
}

hash_name = Hash.new("default value")	# Sets a default value for non-existent keys.

hash_name = hash_name.sort_by { |key, value|
	value
}

hash_name.select { |key, value|		# Selects only the key/value pairs that satisfy the condition.
	value > 5
}

hash_name.each_key { |k|, print k, " "}		# Iterates over ONLY the keys.
hash_name.each_value { |v|, print v, " "}	# Iterates over ONLY the values.

hash_name.delete(key)	# Removes a key/value pair.

# ---------------------- Symbols
hash_name2 = {
	:key_1 => 1,		# Symbols are preceeding by a colon. THEY ARE NOT STRINGS.
	:key_2 => 2			# Only one copy of any particular symbol at any given time.
}

=begin
Keys are useful for 3 reasons:
1.	They're immutable, meaning they cannot be changed once created.
2.	Only one copy of any symbol exists at a time, so it saves computer memory.
3.	Symbols-as-keys are faster to load than strings because of these reasons.
=end

new_hash = { 			# New hash notation in Ruby 1.9.
	symbol_one: 1,
	symbol_two: 2
}


# ---------------------- Methods
def method(argument)		# Create a method that takes a certain argument.
	# code code				# Call a method by typing its name. 
end

def method2(*arguments)		# *arguments indicates there may be more than one passed-in argument.
	# code code
end

# ---------------------- Blocks & Procs/Lambdas
# Blocks are pieces of code or methods that are between the do/end or { }.
# Procs are basically saved pieces of block codes.

proc_name = Proc.new {  			# Saves a block of code as a proc.
	# code code
}

var_name.method_name(&proc_name)	# Passing in a proc as a block to a method.
					(&:method_name)	# Passing a method as a symbol as a proc.
proc_name.call 						# Calls a proc.

lambda { |argument|			# Creates a lambda.
	#code code
}

=begin

Differences between a Lambda and a Proc:
1. Lambdas check to see if the correct number of arguments have been passed in.
   A proc however, will assign a "nil" value to any extraneous arguments.
2. When a lambda returns, it will resume the rest of the method that called it.
   A proc however, does not go back to the method. It ends the method early.

=end

# ---------------------- One-lined & Compacted Statements

expression if x < y		# One-lined "if" statement.

expression unless x < y	# One-line unless statement.

case var_name1 			# Compact case statement.
	when "option1" then expression
	when "option2" then expression
	else expression
end


# ---------------------- Yielding
def yield_method(argument)
	puts "Method step 1."
	yield("step 2.")
	puts "Method step 3."
	yield(argument)
end

yield_method("step 4.") { |argument| 
	puts "Method #{argument}"
}

=begin
This will output:

Method step 1. Because method step 1 was peformed.
Method step 2. Then it yields to the block, and passes in "step 2."
Method step 3. Then it continues to step 3.
Method step 3. Then it yields again, and passes in the argument we specified "step 4."

=end

# ---------------------- Classes & Modules
class ClassName						# Typically named in UpperCamelCase.
	attr_reader   :attribute1		# Makes class.attribtue1 readable.
	attr_writer   :attribute2		# Makes class.attribute2 editable.
	attr_accessor :attribute3		# Makes class.attribtue3 both readable/editable.

	$global_variable = "Value"		# Creates a global variable, accessible anywhere.
	@@class_variable = "Value"		# Assigns an attribute for all instances of this class.
									# Can only be accessed by methods utilized by the class itself.
	def initialize(attribute)		# Can pass in any desired attributes.
		@attribute = attributes 	# Assigns passed in attributes as instance attributes.
		@@class_variable += 1
	end

	public								# Specifies the following attributes/methods are public.

	def self.identify_class_variable
		return @@class_variable
	end

	private								# Now specifies the following are private.

	def method
		# code code
	end
end

class ClassName2 < ClassName 		# Has ClassName2 inherit the attributes and methods of ClassName. 
end 								# Can overwrite parent methods by re-defining them.
									# Place "super" in the new method definition to check the parent 1st.


# Modules are similar to classes, but are generally used for non-changing classes.

module ModuleName 							# Creates a Module. 
	ATTRIBUTE_1 = "Value"					# Attributes usually written in ALL CAPS.
	ATTRIBUTE_2 = "Value"

	def ModuleName.method_name(parameter)
		#code code
	end
end

puts ModuleName::ATTRIBUTE_1		# Accesses the value for a module.

require 'module'		# Acesses Modules that are already present in the interpreter.
include ModuleName		# Enables an instance of a class to include a module's methods/attributes.
extend ModuleName		# Enables a class ITSELF, not the instances, to use a module's methods.
# When a module and a class mix together, it is called a MIXIN!