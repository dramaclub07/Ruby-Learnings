class BalancedParanthesisError < StandardError
    def message
        "The Parantheses are not balanced"
    end
end

def is_balanced?(str)
    match = {')' => '(' , '}' => '{' , ']' => '['}

    stack = []

    str.each_char do |char|
        if ['[', '{' , '('].include?(char)
            stack.push(char)
        elsif [')', '}', ']'].include?(char)
            if stack.empty? || stack.last != match[char]
                raise BalancedParanthesisError
            end

            stack.pop
        end
    end

    stack.empty?
end

begin 
    puts is_balanced?("{[()]}") ? "Balanced" : "Not balanced"
    puts is_balanced?("{[(])}")  ? "Balanced" : "Not balanced"
    puts is_balanced?("[{()}]") ? "Balanced" : "Not balanced"
rescue BalancedParanthesisError => e
    puts e.message
end