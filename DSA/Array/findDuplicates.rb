require 'set'

def findduplicate(nums)
    return [] if nums.empty?

    seen = Set.new
    duplicate = Set.new

    nums.each do |item|
        if seen.include?(item)
            duplicate.add(item)
        else
            seen.add(item)
        end
    end

    return duplicate.to_a
end
puts "enter number"
nums = gets.chomp.split.map(&:to_i)
puts findduplicate(nums).inspect
