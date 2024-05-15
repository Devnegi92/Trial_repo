# print("Hello")
# print("This is my first program")
# print("Bye")
# print(17 * 13)

# # Author : Devender
# print("Hey iam a good boy \n and viewer is also good boy/girl")
# print(5+6)
# print(15-9)
# print(15*6)
# print(15/6)
# print(15//6) #removes decimal point
# print(15%6) # provide only reminder value
# print(5**3) # provides cube value

# a=10
# b=15
# ans1=a+b
# print("Addition of", a, "and", b, "is:", ans1)
# ans2=a-b
# print("Subtraction of", a, "and", b, "is:", ans2)
# ans3=a*b
# print("Multiplication of", a, "and", b, "is:", ans3)
# ans4=a/b
# print("Divide of", a, "and", b, "is:", ans4)
# ans5=a%b
# print("Module of", a, "and", b, "is:", ans5)

# a="10"
# b="5"
# print(int(a)+int(b))

#### Calculator for two words

a = int(input("Enter the First number:"))
b = int(input("Enter your second number"))
ans1 = a + b
print("Addition of", a, "and", b, "is:", ans1)
ans2 = a - b
print("Subtraction of", a, "and", b, "is:", ans2)
ans3 = a * b
print("Multiplication of", a, "and", b, "is:", ans3)
ans4 = a / b
print("Divide of", a, "and", b, "is:", ans4)
ans5 = a % b
print("Module of", a, "and", b, "is:", ans5)

#######String Handling

name = "Devender"
print(name[0])
print(name[1])
print(name[2])
print(name[3])
print(name[4])
#print(name[8]) throws an error
print(name)

name = '''Hey Bro, 
"hows the day'''
print("Starting of loop")
for character in name:
  print(character)

########String Slicing

print("\n\nStarting of String Slicing using Index")
names = "Devender,Pratyush,Ankit"
len1 = len(names)
print(len1)
print(len(names))
print(names[0:8])  # includes 0 but not 8
print(names[:8])
print(names[0:-3])
print(names[0:len(names) - 3])
print(names[-4:-3])
print(names[len(names) - 4:len(names) - 3])
print(names[::-1])  # Reverse string

#### String Methods

# Strings are immutable (basically it cannot be changed)
print("\n\nStarting of String Handling Methods")
a = '!! Hello Devender !!'
print(len(a))
print(a.upper())
print(a.lower())
print(a.strip())  # Removes any white spaces before & After the string
print(a.rstrip("!"))  # Removes trailing characters from the string
print(a.replace("Devender", "Dev"))
print(a.replace(a[3:8], "Dev"))
print(a.split(" "))  #Return the seperated sstrings as a list items
b = "heLLo deVendER"
print(b.capitalize())  #Capitalize the first letter and rest in lower case
print(
    b.center(50))  #Aligh string to the center as per  parameter given by user
print(a.count("De")
      )  # counts the number of times the given value has occured in the string
str1 = "Welcome to the python world !!!!"
print(
    str1.endswith("!")
)  # check the string if ends with given parameter then Returns True else False
print(
    str1.startswith("!")
)  # check the string if ends with given parameter then Returns True else False
print(str1.endswith("to", 4, 10))
#Find() - find the first occurence at the given value and return the index where is present , if given value is absent from the string the returns -1
print(str1.find("w"))
print(str1.find("W"))
print(str1.find("Q"))
#Index() -find the first occurence at the given value and return the index where is present , if given value is absent from the string then it raises the  error
print(str1.index("w"))
#print(str1.index("wwrre"))
str = "DEVENDER  "
print(str.isalnum())  # check the string is alpha numeric or not (A-Z,a-z,0-9)
print(str.isalpha())  # check the string is alpha only or not (A-Z,a-z)
print(str.islower())  # check the lower if lower or not
print(str.isupper())  # check the upper if upper or not
print(
    str.isprintable()
)  # Check if string contains printable then returns true if any carriage return or any else is prenst then false
print(str.isspace())  # check white space
c = "Welcome To World"
print(c.istitle(
))  # check the first letter of each word is capital if yes then returns true)
#swapcase() - change the character casing of the string(lower to upper and upper to lower)
print(c.swapcase())
print(c.title())  # change the first character of each word to capital
