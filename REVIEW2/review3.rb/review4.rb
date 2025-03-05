def quick_sort(arr)
  return arr if arr.length <= 1
  pivot = arr.delete_at(arr.length - 1)
  left = arr.select { |x| x < pivot }
  right = arr.select { |x| x >= pivot }
  quick_sort(left) + [pivot] + quick_sort(right)
end

arr = [10, 9, 8, 7, 9, 5, 4]
puts quick_sort(arr).inspect
