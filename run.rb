require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

bob = Manager.new("Bob", "Tech", 45)
tom = Manager.new("Tom", "HR" ,38)
simon = Manager.new("Simon", "Finance", 56)
sall = Manager.new("Sally", "HR" ,38)

ron = Employee.new("Ron", 1200, bob)
sheri = Employee.new("Sheri", 2100, bob)
al = Employee.new("Al", 900, tom)
mike = Employee.new("Mike", 1300, simon)


# mang1.hire_employee(ron)
# mang1.hire_employee(sheri)
# mang2.hire_employee(al)
# mang2.hire_employee(mike)


binding.pry
puts "done"
