=begin 
Employee Salary Calculation
Create a class Employee with the following:
name and salary as instance variables.
A method display_details to show the name and salary of the employee.
Create two subclasses Manager and Developer that inherit from Employee. The Manager class should have an additional method to give a bonus, while Developer should include a method to increase the salary by a certain percentage.
Create objects of both subclasses, set salaries, and calculate the final salary with bonuses and increases.
=end

class Employee
    def initialize(name, salary)
        @name = name
        @salary = salary
    end
    
    def display_details
        puts "Name is #{@name} and Salary with Bonus is :#{@salary}"
    end

end

class Manager < Employee  
    def bonus(employee, amt)
        employee.salary+= amt
        puts "Bonus of #{amt} added to #{employee.name}'s account"
    end
end

class Developer < Employee
    attr_accessor :name , :salary
        def increase_salary(percentage)
            temp = percentage.to_f*@salary/100
            @salary+= temp
            puts "THE SALARY OF #{@name} after a hike of #{percentage} % IS => #{@salary}"
        end
    
end

manager = Manager.new("Priyanshu",90999)
developer = Developer.new("hkb", 25678)
manager.bonus(developer,9000)
developer.increase_salary(2)
manager.display_details

developer.display_details

