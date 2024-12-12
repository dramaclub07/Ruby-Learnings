def checkprime
    puts "ENTER NUMBER:"
    nums = gets.chomp.to_i
    count = 0

    (2..nums/2).each do |i|
        if nums % i == 0
        count+=1
    end
raise ArgumentError " A PRIME NUMBER" if count == 1
end
end
checkprime

    