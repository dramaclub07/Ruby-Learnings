def max_profit(prices)  
  return 0 if prices.empty?  

  minprice = Float::INFINITY  
  max_profit = 0  
  
  prices.each do |price|  
    minprice = [minprice, price].min  
    max_profit = [max_profit, price - minprice].max  # Calculate profit correctly  
  end  
  
  return max_profit  
end  

puts "Enter the prices separated by spaces:"  
input = gets.chomp.split.map(&:to_i) 
puts "Maximum profit is: #{max_profit(input)}" 