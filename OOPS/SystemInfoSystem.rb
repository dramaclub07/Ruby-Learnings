class GradeError < StandardError
    def initialize(message)
        super(message)
    end
end

class Student
    attr_accessor :name, :age
    attr_reader :grades

    def initialize(name, age)
        @name = name
        @age = age
        @grades = []
    end

    def add_grades(grade)
        begin
            raise GradeError.new("Grade must be between 0 and 100") unless grade.between?(0, 100)
            @grades << grade
            puts "Grade #{grade} added successfully"
        rescue GradeError => e
            puts e.message
        end
    end

    def calculate_average
        if @grades.empty?
            puts "No grades available to calculate average"
            return 0
        end

        average = @grades.sum / @grades.size.to_f
        puts "Average grades: #{average.round(2)}"
        average
    end
end

drmclb = Student.new("Priyanshu Singh", 21)
drmclb.age = 30
puts "Updated Age: #{drmclb.age}"
drmclb.add_grades(100)
drmclb.add_grades(50)
drmclb.add_grades(110)
drmclb.calculate_average
