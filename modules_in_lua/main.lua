--before you can use the module you should import the module
local module = require("module_lua") --file extension is not required here
print(module.factorial(10)) -- this is how you call the functions that you put inside your module from another file
--if the modules that are provided by lua use don't have to import them
--then run this file it will be fine
