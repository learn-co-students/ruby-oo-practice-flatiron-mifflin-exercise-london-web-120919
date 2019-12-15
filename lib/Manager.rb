class Manager

    attr_reader :name
    attr_accessor :department, :age

    @@all = []

    def initialize(name,department,age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name,salary)
      Employee.new(name, salary, slef) 
    end

    def employees
     Employee.all.select{|empl|empl.manager == self}
    end

    def self.all_departments
      self.all.map{|manag| manag.department}.uniq
    end

    def self.average_age
     av = self.all.map{|mang| mang.age}.reduce(:+).to_f / self.all.count
     av.round(2)
    end   
    
    

end
