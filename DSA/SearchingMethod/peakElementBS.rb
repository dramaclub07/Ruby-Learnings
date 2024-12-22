=begin
Find the Peak Element
A peak element is an element that is greater than its neighbors. Find the index of any peak element in an array.
Hint: Use Binary Search for a logarithmic solution.
=end

def find_peak_element(arr)
    n = arr.length
    l = 0
    r = n - 1

    while l < r
        mid = l + (r - l)/2
        if arr[mid] < arr[mid+1]
            l = mid + 1
        else
            r = mid
        end
    end
    return l
end

