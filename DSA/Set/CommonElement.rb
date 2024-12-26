=begin
2. Find Common Elements in Arrays
● Problem: Given two arrays, find the elements that are present in both arrays.
● Solution Approach:
○ Convert the first array to a set.
○ Create an empty array to store common elements.
○ Iterate through the second array:
■ If the current element is present in the set, add it to the common elements
array.
○ Return the common elements array.
=end
require 'set'  

def common_elements(arr1, arr2)  
  set1 = Set.new(arr1)               
  common = []
  arr2.each do |element|  
    common << element if set1.include?(element) 
  end  
  common                              
end  


puts common_elements([1, 2, 3], [2, 3, 4]).inspect 
puts common_elements(['3', 'u', '2'], ['y', 'p']).inspect