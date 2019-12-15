class Manager

    attr_accessor :name, :department, :age
    
    @@managers_all = [] 
    @@all_departments = []

    def initialize(name:,department:,age:)
        @name = name
        @department = department
        @age = age

        @@managers_all << self

        @@all_departments << department
    end
    def employees 
        Employee.all.select{|emp_e| emp_e.manager == self}
    end
    def self.all
        @@managers_all
    end
    def hire_employee(name,salary)
        Employee.new(name:name,salary:salary,manager:self)
    end
    def self.all_departments
        @@all_departments
    end
    def self.average_age
        an_array = @@managers_all.map{|managers| managers.age}
        an_array.reduce(:+) / @@managers_all.length
    end
end
