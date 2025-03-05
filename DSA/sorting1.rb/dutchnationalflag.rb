def sort_array(nums)
  low = 0    # Pointer for 0
  mid = 0    # Pointer for 1
  high = nums.length - 1  # Pointer for 2

  while mid <= high
    if nums[mid] == 1
      mid += 1
    elsif nums[mid] == 2
      nums[mid], nums[high] = nums[high], nums[mid]
      high -= 1
    else
      nums[mid], nums[low] = nums[low], nums[mid]
      low += 1
      mid += 1
    end
  end
  nums
end

nums = [2, 0, 2, 1, 1, 0]
sorted_nums = sort_array(nums)
puts "Sorted array: #{sorted_nums.inspect}"
