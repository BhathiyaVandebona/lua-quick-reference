--this is used to control the execution of functions
--if you want a function to wait executing in the in the middle
--and ait for anothre function to finish execution then this is what you
--should use this can go on from function to function (a function calling
--other functions and so on) stop a function and then run a function while
--that function is suspened you can resume the execution of that function
--end then execute that function

--r stands for routine
local r1 = coroutine.create(
	function ()
		for i = 1, 100 do
			print("This is i:" .. i)
			if i == 10 then
				coroutine.yeild() -- this will make this coroutine wait
        --and the other or the nexrt couroutine starts executing
			end
		end
	end
)

local r2_function = function()
  for i = 1, 20 do
    print("This is the routine_2's i:" .. i)
  end
end

local r2 = coroutine.create(r2_function) --here you don't have to add parenthesis

print(coroutine.status(r1)) --this will say whether the routine is running or not
--running -- IS RUNNING
--suspened -- IS SUSPENED or NOT STARTED
--normal -- IS ACTIVE BUT NOT RUNNING
--dead -- HAS FINISHED or STOPPED WITH AN ERROR

coroutine.resume(r1)
print(coroutine.status(r1))

coroutine.resume(r1)
print(coroutine.status(r1))

--this is a really useful
--this is much like the threads
--to check whether a couroutine is in a state use 
if coroutine.status(r1) == "suspened" then
  coroutine.resume(r1)
end
