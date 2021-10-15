--this is how you create a class and from this class you can make as mush objects as much as you want
--lua is not an object oriented language it is much like C
--in lua you can use tables to create objects

--tables are used to make objects as mentioned above and this is how,

local function Employee(emp_name, emp_age, emp_branch, empl_type) --here we capitalize the first letter to idicate that it is an Object or titlecase
  --here we return a table of content  the table returned will be your object
  return {
    name = emp_name,
    age = emp_age,
    branch = emp_branch,
    emp_type = empl_type,
    
    --to add functions use
    details = function(self) --here like in python we you the self to identify the object without this self you might get errors
      print("This is the name of the employee:" .. self.name)
      print("This is the age of the employee :" .. self.age)
      print("This is the branch of the employee:" .. self.branch)
      print("This is the emp_type of the employee:" .. self.emp_type)
    end

  }
end

local emp1 = Employee("John", 28, "New south whales", "Tech support")
--to access an attributes use
print(emp1.name)
local emp2 = Employee("Jonathan", 25, "Liverpool", "Manager") --they are two different types as well
print()
emp1:details() -- here you the colon to access methods
