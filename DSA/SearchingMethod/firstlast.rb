def range(nums, target)
  [nums.index(target) || -1, nums.rindex(target) || -1]
end

nums = gets.chomp.split.map(&:to_i)
target = gets.chomp.to_i
puts range(nums, target).inspect
