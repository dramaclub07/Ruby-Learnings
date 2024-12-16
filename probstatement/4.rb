#Write a ruby program that simulates a simple counter. It attempts to divide a number by a given divisor. 
#If the divisor is 0, retry the division after prompting the user for a new divisor
class Counter
  def initialize(number)
    @number = number
  end

  def divide(divisor)
    begin
      result = @number / divisor
      puts "Result: #{result}"
    rescue ZeroDivisionError
      puts "Error: Divisor cannot be 0."
      print "Enter a new divisor: "
      new_divisor = gets.chomp.to_i
      divide(new_divisor)
    end
  end
end

counter = Counter.new(10)
print "Enter a divisor: "
divisor = gets.chomp.to_i
counter.divide(divisor)