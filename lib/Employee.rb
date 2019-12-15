class Employee

    attr_accessor :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def manager_name
        manager.name
    end

    def self.paid_over(pay)
        self.all.select{|emp| emp.salary > pay}
    end

    def self.find_by_department(dept)
        self.all.detect{|emp|emp.manager.department == dept} #detect finds the first one :)
    end


    def tax_bracket
        Employee.all.select{|emplo|emplo.salary >1000}
    end

    



end
