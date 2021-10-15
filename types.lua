--this is a new lua learning support documaentatiosn made by bobby tarentino
--[[
		this is a multi line comment in lua
		you can use this type of syntax to 
		make a multi-line comments
]]

--this is the lua print function
print("This is the hello world")

--this is a lua string 

str_1 = 'This is one way of declaring a string in lua'
str_1 = "this is the second way of doing this"

-- string conceatenation  is done as follows
print("This " .. "is " .. "string " .. "concatenation " .. "in " .. "lua.")

--data types and variables in lua
--[[
	nil => like NULL in C or represents empty in lua
	strings => "this is a string." or 'this is a string as well'
	boolean => true or false
	and there is a built in type called a table in lua
--]]
--to declare a variable use this syntax
--local(<=keyword) variable_name = value 

--to create and initialize
--here the local keyword is used to 
--initialize the variable in a local scope
local name = "Your name"
print(name)
--to create only declare a variable
local a -- this is an empty variable no value
print(a) -- will output nil

a = 10
print(a + 78) -- will output 88

print("This is your name ::" .. name .. ".")

--to delete a variable use variable_name = nil
name = nil

--this is also another possible way to create a variable
--this is a global variable by convention they are defined 
--using uppercase letters
AGE = 10

--lua is case sensitive and age is not the same as
--AGE


--this is how you can get a multi-line string

local multilinestring = [[
cool this is a
a multi line
string
]]

print()

--[[this is the boolean types 
	nil and false are false and 
	those are the only two variables 
	that will be considered as false 
	unlike other prorgamming languages
	these are the only two false types
]]

--you can use the type() function to find the date type
--of a variable

print(type(AGE))
