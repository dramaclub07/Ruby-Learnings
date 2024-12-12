begin
    puts "ENTER A NUMBER"
    num = gets.chomp
    begin 
        sqrt = Math.sqrt(num.to_f)
        puts "THE SQUARE ROOT OF #{num} is #{sqrt}"
    rescue ArgumentError
        puts "Invalid Input"
        retry
    rescue StandardError => e
        puts "an error occured: #{e.message}"
        retry
    end
end