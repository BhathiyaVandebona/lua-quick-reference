modlue = {}
--this is a modlue craeted by a user
--a package is a collection of modules

--the functions that you define when you are creating modules
--because those functions are used globally
--when you create functions just like this ti won't become a part of the module
function fact(number)
  if number == 0 then
    return 1
  else
    return number * factorial(number - 1)
  end
end

--to make this a part for the module use this
--we make the functions and we add them to the table with  the name of the function as the key
--and then we call it using the table
function module.factorial(number)
  if number == 0 then
    return 1
  else
    return number * factorial(number - 1)
  end
end

--this is another function
function modlue.get_max(...)
    local max = 0
    for key, value in pairs({...}) do
      if value > max then
        max = value
      end
    end
    return max
end

--here we return that table
return module
