=begin 
Unique Characters in a String
Problem: Given a string, determine if all characters in the string are unique.
Solution Approach:
Create a set to store encountered characters.
 Iterate through the string.
For each character:
If the character is already present in the set, return false (duplicates found).
Otherwise, add the character to the set.
If the loop completes without finding duplicates, return true.
=end
require 'set'

def unique(str)
    char_set = Set.new
    str.each_char do |char|
        if char_set.include?(char)
            return false
        end
        char_set.add(char)
    end
    true
end

puts unique("abcde").inspect
puts unique("hellohello").inspect
puts unique("ASM").inspect
