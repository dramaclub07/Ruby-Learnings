#Given a grid of size m * n and robot is paced at n-1 and m-1 
#also given a string at str only the character of U, D , L , R representing the moves the robot is
#going to perform task is to find robot will be safe at the end of the last move
#use  cases like case Up down left right  when 
def robot_path
    puts "enter the number of row"
    m = gets.chomp.to_i
    puts "enter the number of columns"
    n = gets.chomp.to_i
    puts "enter the string in UPPERCASE"
    str = gets.chomp
    x = m - 1
    y = n - 1
    matrix = Array.new(m) {Array.new(n, 0)}
    safe = true

    str.each_char do |choice|
        case choice
        when 'U'
        x -= 1
        safe = false if x <= 0
        when 'D'
        x += 1
        safe = false if x > m
        when 'L'
        y -= 1
        safe = false if y <= 0
        when 'R'
        y += 1
        safe = false if y > n
        end
    end

    puts "The robot is safe #{safe}"
end


robot_path