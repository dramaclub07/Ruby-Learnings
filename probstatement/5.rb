def find_string_index(array, target)
  array.each_index do |index|
    return index if array[index] == target
  end
  -1
end

#Create a method in Ruby that takes an array of strings and a string as input. 
# The method should return the index of the string in the array and exit immediately if a match is found. If no match is found, return -1.