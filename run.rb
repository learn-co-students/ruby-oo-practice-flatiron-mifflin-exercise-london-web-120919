require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

michael = Manager.new(name:"Michael Scott",department:"sales US",age:40)
david = Manager.new(name:"David Brent",department:"sales UK",age:42)

pam = Employee.new(name:"Pam Beesly",salary:15000,manager:michael)
dwight = Employee.new(name:"Dwight Schrute",salary:15500,manager:michael)


david.hire_employee("Jim Halpert",25000)




#Test your code here


binding.pry
puts "done"
