--this is how you inherit something from another table to another


local function Employee(emp_name, emp_age, emp_branch, empl_type)
  --you can do this too 
  --local chef = {content of the chef class}
  --return chef <<-- then return this
  return {
    name = emp_name,
    age = emp_age,
    branch = emp_branch,
    emp_type = empl_type,
    
    details = function(self) 
      print("This is the name of the employee:" .. self.name)
      print("This is the age of the employee :" .. self.age)
      print("This is the branch of the employee:" .. self.branch)
      print("This is the emp_type of the employee:" .. self.emp_type)
    end

  }
end

-- you are adding more functionality to a already existing table that is all

local function Manager(name, age, branch, field, yearsofexp)
  local emp_type = "Manager"
  local manager = Employee(name, age, branch,emp_type)
  manager.yearsofexp = yearsofexp
  manager.field = field

  manager.get_manager_details = function(self)
    print("The years of experience of :" .. manager.name .. " is :" .. manager.yearsofexp)
    print("The feild of the manager :" .. manager.name .. " is :" .. manager.field)
  end

  --you can also override the functions in the above table as well
  --just use the same function name

  return manager 
end

local emp1 = Employee("John", 28, "New south whales", "Tech support")
print(emp1.name)
local emp2 = Employee("Jonathan", 25, "Liverpool", "Manager")
local emp3 = Manager("David", 30, "New York", "Manager", "Computer Science", 10)
print()
emp1:details()

print()
emp3:details()
emp3:get_manager_details()
