# @param {Integer[]} height
# @return {Integer}
def trap(height)
    left = 0 #index 0
    right = height.length-1  #last index
    left_max = 0  #maximum height from left
    right_max = 0 #maximum height from right
    trapped_water = 0 #total water accumulated.

    while left <= right
        if height[left] <= height[right] #we procced to trap the water from left side
            if height[left] >= left_max #if greater, we update our left max
                left_max = height[left]
            else #we can trap watter as height at left  < left max
                trapped_water += left_max - height[left] #left_max and current height at left
            end
            left += 1 #move our left pointer toward right 
        else
            if height[right] >= right_max
                right_max = height[right]
            else
                trapped_water += right_max - height[right] 
            end
            right -= 1
        end
    end
    trapped_water    
end