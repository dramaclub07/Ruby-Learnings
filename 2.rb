#Create a Ruby program that loops through numbers from 1 to 20. Skip numbers that are multiples of 3 and print the rest.

(1..20).each do|num| 
    if num % 3 != 0
        puts num
    end
end