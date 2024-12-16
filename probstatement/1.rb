#divisibility by 7

numbers = gets.chomp.split.map(&:to_i) 
numbers.each do |num|
  if num % 7 == 0
    break
  else
    puts num
  end
end 