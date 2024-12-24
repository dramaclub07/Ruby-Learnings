def eval_rpn(tokens)
  stack = []
  operators = ['+', '-', '*', '/']

  tokens.each do |token|
    if operators.include?(token)
      b = stack.pop
      a = stack.pop
      case token
      when '+'
        stack.push(a + b)
      when '-'
        stack.push(a - b)
      when '*'
        stack.push(a * b)
      when '/'
        stack.push(a / b)
      end
    else
      stack.push(token.to_i)
    end
  end
  stack.pop
end
