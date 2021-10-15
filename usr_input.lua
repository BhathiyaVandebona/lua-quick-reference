--this is how you read input from the console
--local usr_in = io.read() -- and this is all
--print(usr_in)

--reading input
io.write("Enter an integer :") --this how you can prompt the user and read the user input on the same line
--by default lua reads strings from the console
local num = tonumber(io.read())
local temp = num
local fact = 1
while temp > 0 do
	fact = fact * temp
	temp = temp - 1
end

print("The factorial of ".. num .. " is :" .. fact)
