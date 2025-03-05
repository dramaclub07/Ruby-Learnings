def rotate_right(array, n)  
  n = n % array.length
  array[-n..-1] + array[0...-n]  
end  
  
arr = [1, 2, 3, 4, 5]  
rotated_array = rotate_right(arr, 2)  
puts rotated_array.inspect 

