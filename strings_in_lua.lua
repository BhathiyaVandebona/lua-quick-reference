local str = "Hello world!" -- this is a string in lua
local str_1 = 'this is also a string in lua'

--characters are also string in lua
-- to get the lenght of the string
print(#str)

--to store the length you can to this as well
len_str = #"Hello world" --this is also valid

--to convert numbers into strings 
str_num = tostring(10)
--or
num = 20
str_num = tostring(num)

--[[
	escape characters
	\n -->> newline
	\b -->>backslash
	\t -->> tab
	\v -->> vertical tab
	to print escape characters use double backslashes
	\\b -->> this will print => \b
	\" or \' and there are more characters that you can use go check them out
]]

--use the string module for more finctionality
print(string.upper(str))
print(string.lower(str))
print(string.len(str)) -- same as #str

--to get substrings of string use this
print(string.sub(str, 7, 99)) -- from the 7th character to the end of the string

--ascii to number
print(string.byte('a'))
--number to ascii
print(string.char(65))

--to repeat a string use
print(string.rep("Hi", 10, " ")) -- string.rep(string, how_many_times_to_repeat, the_seperator)

--to format strings
print(string.format("pi : %.2f" ,math.pi)) --like in c
print(string.format("number : %.2i" ,10)) --like in c but the specifiers are different

--to find a substring in a string
print(string.find(str, "worl")) -- output the starting and the ending indices else will return nil
local startindex, endindex = string.find(str, "worl")
print("This is the starting index :" .. startindex .." ending index :" .. endindex)

--to check whether a substring exists in a string
print(string.match(str ,"el")) -- if the sub string exists then it will return back the el string else returns nil

--to replace part of a string
print(string.gsub(str, "o", "i")) -- this will return  the new word and the how many times the replacement took place

print(string.gsub(str, "o", "world")) -- this will return  the new word and the how many times the replacement took place


