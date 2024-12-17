# Write an RSpec test for a method palindrome? that returns true if a 
#given string is a palindrome and false otherwise. Include tests for edge cases such as empty 
#strings and special characters.

class Palindrome
  def initialize(string)
    @string = string
  end
  def is_palindrome?
    return false if @string.empty?
    cleaned_string = @string.gsub(/[^a-zA-Z0-9]/,'').downcase
    cleaned_string == cleaned_string.reverse
  end
end
checker = Palindrome.new("A man, a plan, a canal, Panama")
puts checker.is_palindrome?