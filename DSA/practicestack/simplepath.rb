def simplepath(path)
    parts = path.split('/')
    stack = []

    parts.each do |path|
        if part == '.'
            next
        elif part == '..'
            stack.pop unless stack.empty?
        else 
            stack.push(part)
        end
    end
    "/" + stack.join('/')
end

