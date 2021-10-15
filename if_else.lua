--conditional branching in lua
if true then
	print("This is ture")
end

if false then
	print("This will not be executed")
end

--[[
nill is also false ony those two types are false
everything else is true
these are the comparison operators in lua
> => greater than
< => less than
>= -- greater than or equal
<= -- less than or equal
~= (tilde and a equal sign) -- this is not equal to (!= this is not not equal to)
== -- this is equal to

and => this is the AND operator
or => this is the OR operator these operators are short curcuit operators
not => is the negation operator
]]

if 10 ~= 90 then
	print("Ten is not equal to Ninty")
end

local num_1 = 12
local num_2 = 20

max = 0

--this is the if else statement
if num_1 >= num_2 then
	max = num_1
else 
	max = num_2
end

print("The maximum of the two numbers is :" .. max)


local name = "John"
local age = 20
local gender = "M"

if age >= 18 and gender ==  "M" then
	print(name .. " is not a boy anymore")
elseif age >= 18 and gender == "F" then
	print(name .. " is not a girl anymore")
elseif gender == "M" then
	print(name .. " is a boy")
else
	print(name .. " is a girl")
end

--this is the ternay operator

num_1 = 3
num_2 = 1
--assigns either true or false
max = (num_1 > num_2) and true or false
