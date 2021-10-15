--this is about lua functions
--this is a function to find the factorial of a number
--to create a function use
--local functions can only be accessed within this file and only within this file
local function factorial(number)
	--this is how you can give default values to a parameter
	--all the parameter variables have a local scope 
	--and to make the global use _G.variable_name
	number = number or 1 --if no value is passed then it defaults to 1 here if you swap them it will also be 1 
	if number == 0 then
		return 1
	else
		return number * factorial(number - 1)
	end	
end

io.write("Enter an integer :")
local usr_in = tonumber(io.read())
local fact = factorial(usr_in)
print("This is the factorial of " .. usr_in .. " :" .. fact)

--now you can call the factorial function with out a value
fact = factorial()
print("This is the default value (which is 1) factorial :" .. fact)

--you can give as much parameters to a function

local function get_max(num_1, num_2)
	--this max is a global variable
	_G.max = num_1
	if max < num_2 then
		max = num_2
	end
end

get_max(23, 5)
print("This is the max global variable inside of the function get_max :" .. max)

--you can also do this
--declare function like this as well
local cube = function (number)
		return number * number * number
end
print()
print("This is another way to create function in lua (the cube function):" .. cube(2))
print()

--in lua you can return multiple values as well
array = {23, 34, 34, 45, 54, 2, 24, 34}
--this function return the index and the value at that index
local function multiplereturnvalues()
	return 12, 132, 3423, 56
end

local num_1, num_2, num_3, num_4 = multiplereturnvalues()
--if you don't want to use any one or more of them use
local n_1, _, n_3, _ = multiplereturnvalues()-- the underscore will denote this
--this is a common convention

--in lua you can also have anonymous function that is function without names
local function increment(number)
	--this is an anonymous function
	--which is returned by the function increment
	return function()
			number = number + 1
			return number
			end
end
--to call this function
--use this to access the anonymous function because it returns a function
--you can not directly print the value if you do so you will get a memory
--address in which the return function is stored
local inc = increment(10)
--number os incremented each time the function is called remember that
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())
print("This is how you access an anoymous function inside of a function :" .. inc())

--to take infinite amount of arguments in lua
--you simply can use

local function sum(...) --this  is very similar to java's variable length arguments
	--the ... this will be turned into a table(well not a table something like a table) automatically
	-- you can use such function incases where you don't know
	-- the number of arguments passed into the function
	-- pairs is also another way to iterate over a table
	print(...) -- the out put is similar to ex :-- print(12, 34, 34, 6, 7) if those were the values passed in
	--here the key is the index the value is the actual value
	local total = 0
	for key, value in pairs({...}) do --this here ({}) will convert this in to a table
	--for i, #{...} do end this is also another way to do this but it won't give you the key value pairs
		total = total + value
		print("this is the key :" .. key .. " and this is the value :" .. value)
	end
		return total
end

print()
print("The value return by the sum function is :" .. sum(12, 34, 5, 45, 100, 1213, 2345, 4564))--you can passe any number of argumnets
print()
