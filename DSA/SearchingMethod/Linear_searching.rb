#LINEAR SEARCH

def linear_search(arr, target)
    arr.each_with_index do |element , index|
        return index if element == target
    end 
    -1
end
arr =[4,5,6,9,7,5,7]
puts linear_search(arr, 7)

def binary_search(arr, target)
    low = 0
    high = arr.length-1

    while low<=high
        mid = (low + high)/2

        if arr[mid] == target
            return mid

        elsif mid < target
            low = mid + 1
        else
            high = mid -1
        end
    end
    -1
end

arr = [2,3,4,5,6,8,23]
puts binary_search(arr, 90)
    