--this can be used to get information aboiut the system and also the things like data and time
--to get the time or the seconds passed from 1970 use
print(os.time())
--this will give the time (in seconds) passed from 1970 up until the details specified

local T = os.time({
    year = 2000,
    month = 10,
    day = 1,
    hour = 14,
    min = 12,
    sec = 10
  })

--to get the time passed from thid moment until now
print(os.time() - T)

--this is another way to do this this is built in to lua
print(os.difftime(os.time(), T))

--to get the date from the os use
print(os.date())--this will give you the date

--to access environment variables using lua
--this will help you to store passwords user
--names in environment variable and access them
--using lua
--these examples are for unix users
print(os.getenv("HOME")) -- give the environment varible you want as the argument
print(os.getenv("USER")) -- give the environment varible you want as the argument
print(os.getenv("PWD")) -- give the environment varible you want as the argument
print(os.getenv("USERNAME")) -- give the environment varible you want as the argument

--to rename remove files or manage files
--os.rename("current_name_of_the_file", "new_name_of_the_file") -- with or without file extensions
--os.remove("file_to_be_removed") --this will remove the file specified 
--for both above cases if the file is not in the current directory then the absolute path
--or the relative path should be specified


--ececuting commands can also be performed by lua
--but it is never recommmended that you use this to execute commands
--these are some unix commands
os.execute("ls -al")
os.execute("pwd")
os.execute("date")
os.execute("cal")

--this can be used to time code or runtimes

local starttime = os.clock()
local sum = 0
for i = 1, 100 do
  sum = sum + 1
end
local endtime = os.clock()

print("The time it took to find the sum of the first 100 numbers is :" .. starttime - endtime)

--to exit the program or some code if things go bad
--use this method
os.exit() --this can be really helpful incases of error and safety
