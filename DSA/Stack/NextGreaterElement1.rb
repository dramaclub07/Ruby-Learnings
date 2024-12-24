def next_greater_element(nums1, nums2)
  stack = []
  map = {}
  
  nums2.each do |num|
    while stack.any? && stack.last < num
      map[stack.pop] = num
    end
    stack.push(num)
  end

  nums1.map { |num| map[num] || -1 }
end
