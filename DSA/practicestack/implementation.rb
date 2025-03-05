#LIFO ( LAST-IN-FIRST- OUT)
require 'logger'

class StackEmptyError < StandardError
    def message
        "error: stack is empty"
    end
end


class StackOverFlow < StandardError
    def message
        "Error: stack is full , cannot push more. pet full hai)"
    end
end

class Stack
    def initialize(max_size = nil)
        @stack = []
        @max_size = max_size
        @logger = Logger.new(STDOUT)
        @logger.level = Logger::DEBUG
    end

    def push(element)
        if @max_size && @stack.length >= @max_size
            @logger.error("stack overflow, trying to push #{element}, when stack is full")
            raise StackOverFlow
        end
        @stack.push(element)
        @logger.info("Pushed #{element} onto the stack")
    end

    def pop
        if @stack.empty?
            @logger.error("Stack UnderFlow. trying to pop from an empty stack")
            raise StackEmptyError 
        end
        element = @stack.pop
        @logger.info("Popped #{element} from the stack")
        element
    end

    def peek #view top element without removing it 
        if @stack.empty?
            @logger.error("Stack is empty, trying to peek")
            raise StackEmptyError 
        end
        @logger.info("current stack size => #{@stack.length}")
        @stack.last
    end

    def size
        @logger.info("Current size of stack:=> #{@stack.length}")
        @stack.length
    end


    def display
        if @stack.empty?
            puts "Stack is Empty"
        else
            puts "stack element (from top to bottom => #{@stack.reverse.join(', ')})"
        end
    end
end


stack = Stack.new(4)

begin
    puts "Trying to pop from an empty stack....."
    stack.pop
rescue StackEmptyError => e
    puts e.message
end


stack.push("10")
stack.push("hello")
puts "Top element after pushing 'hello': #{stack.peek}"
stack.push(30)
stack.push(69)

puts "STACK TOP ELEMENT IS #{stack.peek}"
puts "STACKSIZE IS #{stack.size}"

stack.display