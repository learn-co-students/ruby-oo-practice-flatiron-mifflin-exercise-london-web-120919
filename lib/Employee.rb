class Employee
    attr_reader :name
    attr_accessor :salary, :manager
    @@all = []

    def initialize(name:,salary:,manager:) #I had to create a manager or otherwise I didn't know how to connect them
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end
    def manager_name
        @manager
    end
    def self.all
        @@all
    end
    def self.paid_over(num)
        @@all.select {|employee| employee.salary > num}
    end
    def self.find_by_department(depart)
       manager_dep = Manager.all.find{|man| man.department == depart}
       @@all.find{|emp_find| emp_find.manager == manager_dep}
    end
    def tax_bracket
        @@all.select{|emp| emp.salary.between?(self.salary-1000,self.salary+1000) }
    end
end
