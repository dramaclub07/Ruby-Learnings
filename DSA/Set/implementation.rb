class SimpleSet  
  def initialize  
    @elements = []  # Corrected variable name for clarity  
  end  

  # Adds an element to the set  
  def add(element)  
    @elements << element unless include?(element)  # Only add if not already included  
  end  

  # Removes an element from the set  
  def remove(element)  
    @elements.delete(element) if include?(element)  # Removes element if present  
  end  

  # Check if an element exists  
  def include?(element)  
    @elements.include?(element)  
  end  

  # Returns a new set containing all elements from both sets  
  def union(other_set)  
    union_set = SimpleSet.new  
    @elements.each { |e| union_set.add(e) }  
    other_set.to_a.each { |e| union_set.add(e) }  # Use to_a to get elements  
    union_set  
  end  

  # Returns a new set containing elements common to both sets  
  def intersection(other_set)  
    intersection_set = SimpleSet.new  
    @elements.each { |e| intersection_set.add(e) if other_set.include?(e) }  
    intersection_set  
  end  

  # Returns a new set containing elements in the first set but not in the second  
  def difference(other_set)  
    difference_set = SimpleSet.new  
    @elements.each { |e| difference_set.add(e) unless other_set.include?(e) }  
    difference_set  
  end  

  # Return elements as an array  
  def to_a  
    @elements.dup  # Return a duplicate to prevent external modifications   
  end  
end  

# Example usage  
set1 = SimpleSet.new  
set1.add(1)  
set1.add(2)  
set1.add(3)  

set2 = SimpleSet.new  
set2.add(2)  
set2.add(3)  
set2.add(4)  

puts "Set 1: #{set1.to_a}"  # Output: Set 1: [1, 2, 3]  
puts "Set 2: #{set2.to_a}"  # Output: Set 2: [2, 3, 4]  

union_set = set1.union(set2)  
puts "Union: #{union_set.to_a}"  # Output: Union: [1, 2, 3, 4]  

intersection_set = set1.intersection(set2)  
puts "Intersection: #{intersection_set.to_a}"  # Output: Intersection: [2, 3]  

difference_set = set1.difference(set2)  
puts "Difference: #{difference_set.to_a}"  # Output: Difference: [1]