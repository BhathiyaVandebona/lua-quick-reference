--tables represent containers that stores data
--like arrays, stacks, list, sets and so on

--to create a table
local array = {12, 23, 354, 65}

--you cannot print tables like list in python if you do ypu will get a memory address
--to access a value at a desired index use the array notaion

print("This is the first element in the table :" .. array[1])--in lua indices starts from 1
--and you can do this until the last index if nothin is there you will get nil

--a table can contain different types of values as well
local types = {23, "This is a string", true, false, 23.45, {"This is another table inside of a table"}}

--to get the lenght of an array
local length = #array

--this is the unsorted array
for i = 1, #array do
	print(array[i])
end

--to sort a table
table.sort(array) --this is inplace sorting the original table is modified

--to iteratte over a table this is the sorted talbe
for i = 1, #array do
	print(array[i])
end

--to insert a value to the table
table.insert(types, 2, "This was changed") --table.insert(table, index, the_value_to_be_inserted)

--to remove an element from the table use
table.remove(types, 7) -- table.remove(table, index)

--to cnocate the elements of a table and get astring then use
print(table.concat(array, " ")) -- table.concat(table, "The delimeter goes here") will return a string

--this is a multidimensional table (nested arrays or in this case nested tables)
--this is a 3 X 3 matrix
local matrix = {
		{32, 1, 6},
		{2, -1, 90},
		{12, 10, 89}
}

print()
local rows = 1
while rows ~= 4 do
	print(table.concat(matrix[rows], ", "))
	rows = rows + 1
end

--since indices in lua starts from 1 the 1,1 mean 32 in the above example
--to access a partilucar element
local atindexoneone = matrix[1][1]

--use nested loops to iterate through them
print()
for i = 1, #matrix do
	for j = 1, #matrix[i] do
		print("this is the element at " .. i .. "," .. j .. " :" ..matrix[i][j])
	end
end
print()
--this is how you do it
