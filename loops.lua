-- this is the for loop
-- for iterator_variable, boundary, step do 
--		#code
--end
--here by default the step is 1


print()
for i = 0, 10 do
	print(i)
end


print()
for i = 1, 10, 1 do
	print("This is i :" .. i)
end

--this is much like the C for loop but more simpler
--this loop goes from 1 to 10 (boundaries are included)

print()
--to get even values 
for i = 0, 10, 2 do
	print(i)
end

print()
--this is how you go back
for i = 10, 1, -1 do
	print(i)
end

local startpoint, endpoint, step = 100, 0, -1

print()
for startpoint = 100, endpoint, step do
	print("Decrementing the startpoint variable :" .. startpoint)
end

print()
--this is how you can iterate over an array
local array = {1, 32, 5, 7, 90, 0} --this is the array
for i = 1, #array do -- here you don't need to specify the step
	print("This is the " .. i .. " element of the array :" .. array[i])
end

--this is the while loop in lua
local index = 90
while index ~= 100 do
	print("The value of the index variable is incremented by one: " .. index)
	index = index + 1
end

print()
rows = 1
while rows ~= 6 do
	print(string.rep("*", rows, " "))
	rows = rows + 1
end
print()

--this is also another kind of a loop (like a do while loop)
local integer = 1
repeat
	print("Hello")
	integer = integer + 1
until integer >= 10 --this is inverted (it checks until the condition becomes true if the condition is false the loop runs
