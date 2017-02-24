# ------------------------------------------------------------------------------------ PYTHON NOTES

# ---------------------- KEY NOTES

""" 
Multi Line Comment
"""

# ---------------------- Creating a variable
variable_name = value 		# Written as lower_case.
variable_types = ["Int", "Float", "String"]


# ---------------------- Common Commands
print variable_name			# Prints something to the console.
max(1, 2, 3, 4)				# Finds the max value in a list.
min(1, 2, 3, 4)				# Finds the min value in a list.
abs(1)						# Finds the absolute value of a number.
type(variable_name)			# Returns the type of the passed argument.

from datetime import datetime
now = datetime.now()
	#now.year/month/day/hour/minute/second

import math

boolean_true = True 
boolean_false = False
	# Evaluated in this order:
	# not > and > or

variable_name = raw_input("Question")	# Promps the user to input a string response.


# ---------------------- Common String Methods
"string"[0] 				# Accesses the letter at that index of the string.
len("string")				# Returns the number of characters in a string.
str(101)					# Turns a non-string into a string.
"String".lower 				# Returns an all-lower-case string.
"String".upper 				# Returns an all-upper-case string.
"String".isalpha()			# Checks if a string is solely alphabet letters.
string_var[1:5]				# Returns a substring from the first index, to before the second index.
							# Can Use [0:len(string_var)] to encompass the beginning and end.

'What\'s my name?'			# Escapes the use of ' which can end a string early.

print "String " + "concatenation " + "is easy!"

print "String %s. Integer %d. Float %f" % ("String", 1, 1.00)


# ---------------------- Conditionals
if x > y:					# Will run code depending on if conditions are satisfied.
	# code code
elif x < y:
	# code code
else:
	# code code


# ---------------------- Functions
def function_name(argument):				# Call a function via function_name()
	#code code


# ---------------------- Modules
import module_name							# Imports a module, such as math or datetime.
from module_name import module_method		# Function import; imports a method from a module.
from module_name import *					# Universal import; imports all the module's functions.
											# But removes the need to type the module name.


# ---------------------- Lists
list_name = [1, 2, 3, 4]			# Creates a new list.
list_name[1:3]						# Slices a list from first index, to before second index.
		 [:3]						# Cuts from the beginning to the index.	
		 [1:]						# Cuts from the index to the end.
list_name.append("new_item")		# Adds an item to the end of the list.
list_name.insert(0, "new_item")		# Inserts "new_item" at the specified index "0".
list_name.sort()
list_name.remove(1)					# Removes an item from a list.
list_name.pop(1)					# Removes an item from the INDEX of a list.
del(list[1])

range(5)
range(1,5)
range(1,5,2)

for item in list_name:				# Iterating over list items.
	print item

for i in range(len(list_name)):		# Iterating over list indexes. 
	print list[i]	


# ---------------------- Dictionaries
dictionary_name = {					# Creates a new dictionary.
	'Key1' : 'Value1',
	'Key2' : 'Value2',
	'Key3' : [1, 2, 3, 4]
}

dictionary_name['new_key'] = 'new_value'	# Adds a new key to the dictionary.

del dictionary_name[key]			# Deletes a key/value pair from the dictionary.
dictionary_name['Key3'][0]			# Accesses an item within a list inside a dictionary.

for key in dictionary_name:			# Loops over a dictionary.
	print dictionary_name[key]	