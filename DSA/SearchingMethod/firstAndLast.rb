=begin
1. Questions
Find First and Last Position of an Element in a Sorted Array
Given a sorted array, find the first and last position of a given element. Return [-1, -1] if the element is not present.
Hint: Use Binary Search for optimal performance.
=end
def range(nums, target)
    return [-1,-1] if nums.empty?

    if first_occurrence = -1 || last_occurrence = -1
        return [-1,-1]
    end
    [first_occurrence, last_occurrence]
end

def binary_search(nums, target, find_first)
    low = 0
    high = nums.length-1
    result = -1
    while low <= high
        mid = (low + high) / 2
        if nums[mid] == target
            result = mid
            if find_first
                high = mid -1
            else 
                low = mid + 1
            end
        elsif nums[mid] < target
            low = mid + 1
        else
            high = mid - 1
        end
        result
    end
end

binary_search(nums, target, find_first)
puts "Searching for target #{target} in array #{nums}"
puts "First occurrence of target #{target} is at index #{first_occurrence}"
puts "Last occurrence of target #{target} is at index #{last_occurrence}"




    

        














