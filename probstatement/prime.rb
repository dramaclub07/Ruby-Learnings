def isprime(nums)
    nums = gets.chomp.to_i
    return false if nums < 2
    (2..Math.sqrt(nums)).each do |i|
        return false if nums % i == 0
    end
    return true
end

print "enter the number to check it's prime or not"
number = gets.chomp.to_i

if isprime(number)
    puts "#{number} is a prime number"
else
    puts"#{number} is not a prime number"
end

    


