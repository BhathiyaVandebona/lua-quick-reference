--this is about the io streams and file management in lua
io.output("output.txt") --this will create the file if it doesn't exist and
--if the file exists the content will be truncated to this will also selet that file as well
--this will now be selected as the stream
io.write("This is a text file made using lua.")--this is how you write to that file
--every time you open a file you have to close the stream as well
io.close() --this function is used to do that

--[[
  this is how you read from a file
]]

--to open a file in a mode we like we can use this
file = io.open("write_file.txt", "w+") -- here for modes you can use
--[[
  r = read modes
  a = append mode
  w = write mode(the file is create if it doesn't exist if the file exist the content will be truncated)
  like in C there are more modes use the reference maual for more
]]
file:write("My name is user-name") -- this is how you can write to that file
--you can use the above mentioned io methods with this -->> file:function_name(argument_list)
--and when you are done with the file use
file:close() --to close the file
