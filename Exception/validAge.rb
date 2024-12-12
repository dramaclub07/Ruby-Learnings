class AgeError < StandardError; end

def validate_age
    begin
        puts"Enter the age"
        age = gets.chomp.to_i
        raise ArgumentError, "Age must be a positive integer" unless age > 0
        case age
        when 18..100
            puts "VALID AGE"
        else
            raise AgeError.new ("Age is not valid, ENTER AGE BETWEEN 18 AND 100")
        end
    rescue ArgumentError => e
        puts "#{e.message}"
    rescue AgeError => e
        puts "#{e.message}"
    end
end
    
validate_age

   
