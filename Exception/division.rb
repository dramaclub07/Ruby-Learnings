#Problem Statement: Write a Ruby program that prompts the user to enter two numbers and performs division.
# Use exception handling to catch and handle the following errors:

    
    begin
        puts "ENTER TWO NUMBERS YOU WANNA PERFORM DIVSION ON:"
        nums1= gets.chomp.to_f
        nums2= gets.chomp.to_f
        
        result = nums1 / nums2
        raise ArgumentError
        puts "Result: #{result}"
    rescue ZeroDivisionError
        puts "ERROR!!, DIVISION BY ZERO IS NOT ALLOWED"
    rescue StandardError => e
        puts "AN ERROR OCCURED!! #{e.message}"
    end
