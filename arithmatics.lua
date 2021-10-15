-- mathematical operatiosn in lua(working with numbers)
-- to convert string in to numbers use the tonumber() function
-- numerals represented as strings
str = "24"
print(type(str))
print(type(tonumber(str)))

num = tonumber(str)
print(num)

--[[
	arithmatic operators in lua
	+ -->> addition
	- -->> subraction
	* -->> multiplication
	/ -->> division
	% -->> modulo (will give the remainder of a division operations
	all division operations are floating point divisions
	^ (carrot) -->> exponentional
	follows the mathematical conventions to evaluate arithmatic expressions
]]

print(2 + 2)
print(2 - 2)
print(2 * 2)
print(2 / 2)
print(2 % 2)

-- to get more functionality use the math library
print(math.pi)
--to get a random number(random number generation)
math.randomseed(os.time()) --.randomseed(num_seconds)-->> math.randomseed(1)
print(math.random()) -- random(boundry)
print(math.random(10)) -- random(boundry)
print(math.random(10, 50)) -- random(boundry)

print(math.min(12,23,345,5))
print(math.max(12,23,345,5))
print(math.floor(3.24)) -- floor funtion will always round down
print(math.ceil(3.24)) -- ceil funtion will always round up
