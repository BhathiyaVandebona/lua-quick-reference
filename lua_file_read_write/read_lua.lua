io.input("read_file.txt")--here the file must exist
--local file = io.read(100)--here if you give a number it will read that much of characters from the file and we store that in file variable
--local file = io.read("*number")--here if you do this it will read a number from the file but there hase to be a number i the file will read numeral
--local file = io.read("*line")--here if you do this it will read the first line from the file and the virtual head will be move to the beginning of the next line
--next time you call this it will read the next line this acn be used to read the file line by line
local file = io.read("*all") --this will read the whole file regardless the content of the file
print(file)
io.close()


