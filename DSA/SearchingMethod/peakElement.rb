def find_peak_element(nums)  
  return nil if nums.empty?  

  nums.each_with_index do |num, i|  
    if (i == 0 || num > nums[i - 1]) && (i == nums.length - 1 || num > nums[i + 1])  
      return i  
    end  
  end  

  nil  
end  
puts find_peak_element([1, 2, 3, 1]) 