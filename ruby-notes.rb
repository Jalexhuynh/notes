# -------------------------------------------------------------------------------------- RUBY NOTES

# ---------------------- KEY NOTES

=begin
Multi Line Comment
=end

# Ruby automatically returns the last expression it evaluates, making some "return" statement unnecessary!

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
	# code code
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

# ---------------------- Blocks
# Blocks are pieces of code or methods that are between the do/end or { }.


# ---------------------- One-lined & Compacted Statements

expression if x < y		# One-lined "if" statement.

expression unless x < y	# One-line unless statement.

case var_name1 			# Compact case statement.
	when "option1" then expression
	when "option2" then expression
	else expression
end