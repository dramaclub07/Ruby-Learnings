def four_sum(nums, target)
  nums.sort!
  result = []

  (0...nums.length - 1).each do |i|
    next if i > 0 && nums[i] == nums[i - 1]

    (i + 1...nums.length).each do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]

      left, right = j + 1, nums.length - 1

      while left < right
        sum = nums[i] + nums[j] + nums[left] + nums[right]

        if sum == target
          result << [nums[i], nums[j], nums[left], nums[right]]
          left += 1 while left < right && nums[left] == nums[left - 1]
          right -= 1 while left < right && nums[right] == nums[right + 1]
        elsif sum < target
          left += 1
        else
          right -= 1
        end
      end
    end
  end

  result
end
