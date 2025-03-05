# @param {String} s
# @return {Integer}
def longest_valid_parentheses(s)
    stack = [-1] #valid substring
    max_length = 0

    s.each_char.with_index do |char, i|
        if char == '('
            stack.push(i)
        else 
            stack.pop

            if stack.empty?
                stack.push(i)
            else 
                max_length = [max_length, i - stack.last].max
            end
        end
    end

    max_length
end
    
