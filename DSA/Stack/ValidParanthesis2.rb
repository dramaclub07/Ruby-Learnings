def is_valid(s)
  stack = []
  s.each_char do |char|
    case char
    when '(', '{', '['
      stack.push(char)
    when ')'
      return false if stack.pop != '('
    when '}'
      return false if stack.pop != '{'
    when ']'
      return false if stack.pop != '['
    end
  end
  stack.empty?
end
