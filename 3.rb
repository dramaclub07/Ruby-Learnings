valid = false

until valid 
    puts "Enter number between 1 and 10:"
    num = gets.chomp.to_i
    if num >=1 && num <=10
        puts "CONGRATULATIONS, #{num} is a valid number"
        valid = true
    else
        puts "SORRY, #{num} is not a valid number, please TRY AGAIN"
        redo
    end
end