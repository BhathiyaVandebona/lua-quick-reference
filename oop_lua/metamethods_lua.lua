--this is used (sort of) change the functionality of operators and other some other things
--to define new operation you can use thsese methamethods

local function addtwotables(tbl1, tbl2)
	local ntbl = {}
	for i = 1, #tbl1 do
		table.insert(ntbl, i, tbl1[i])
	end

	for i = 1, #tbl2 do
		table.insert(ntbl, #tbl1 + i, tbl2[i])
	end
	return ntbl
end

local metatable1 = {
	--__add mean + 
	--__sub means - and so on
	__add = addtwotables,
	--here you can even have an anonymous function as well
	__sub = function(tbl1, tbl2)
			print("This is not implemented yet")
	end
	--__mul for multiplication
	--__div for division
	--__mod for modulo %
	--__pow raise to the power ^
	--__conact concatenate the content of the table
	--__len will change the functionality of the # operator when used on a table
	--__eq is the == equally equal
	--__lt for less than <
	--__le for less than or equal to <=
	--__gt for greater than >
	--__ge for greater than or equal to >=
}

local function vector_addition(v1, v2)
		local new_vector = {x = (v1.x + v2.x), y = (v1.y + v2.y)}
		return new_vector
	end


local metatable2 = {
	__add = vector_addition
}

local vector1 = { x = 10, y = 7 }
local vector2 = { x = 10, y = 7 } -- here you can define the vector addition and other operations by overloading the operators
setmetatable(vector1, metatable2)

local nvector = vector1 + vector2

print(nvector.x .. " " .. nvector.y)

local tbl1 = {21, 23, 345, 675}
local tbl2 = {231, 435, 435, 342}

--then set that metatable
setmetatable(tbl1, metatable1)

local ans = tbl1 + tbl2

print(table.concat(ans, " "))
