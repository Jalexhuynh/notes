# ------------------------------------------------------------------------------------ PYTHON NOTES

# ---------------------- KEY NOTES

""" 
Multi Line Comment
"""

# ---------------------- Creating a variable
var variableName = value


# ---------------------- Common Commands
print variableName
max(1, 2, 3, 4)
min(1, 2, 3, 4)
type(variableName)


# ---------------------- Common String Methods
"string"[0] 
len("string")
str(101)
"String".lower
"String".upper

"What\'s my name?"

print "Random text %s. Sentence number %d." % ("filler", 2)


# ---------------------- Conditionals
if x > y:
	# code code
elif x < y:
	# code code
else:
	# code code


# ---------------------- Functions
def functionName(argument):
	#code code


# ---------------------- Modules
import moduleName
from moduleName import moduleMethod
from moduleName import *


# ---------------------- Lists
listName = [1, 2, 3, 4]
listName[1:3]
l
istName.insert(0, "Zero")
listName.sort()
listName.remove(1)
listName.pop(1)
del(list[1])

range(5)
range(1,5)
range(1,5,2)

for item in listName:
	print item

for i in range(len(listName)):
	print list[i]


# ---------------------- Dictionaries
dictionaryName = {
	'Key1' : 'Value1',
	'Key2' : 'Value2',
	'Key3' : [1, 2, 3, 4]
}

del dictionaryName[key]
dictionaryName['Key3'][0]