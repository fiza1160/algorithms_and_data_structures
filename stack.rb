require_relative "linked_list"

class Stack
    def initialize
        @items = LinkedList.new
    end

    def push(value)
        @items.add_last(value)
    end

    def pop
        if @items.length == 0
            puts "Stack is empty"
            return false
        else
            result = @items.last
            @items.remove_last
            return result
        end
    end

    def peek
        if @items.length == 0
            puts "Stack is empty"
            return false
        else
            return @items.last
        end
    end

    def count
        return @items.length
    end

    def to_s
        node = @items.first
        until node.nil?
            puts node.value
            node = node.next
        end
    end
end


if __FILE__ == $0
    stack = Stack.new

    stack.push(5)
    stack.push(16)
    stack.push("hghjhg")
    stack.push(66)

    puts stack

    puts stack.peek.to_s
    puts stack.count

    stack.pop
    puts stack

    stack.pop
    puts stack
end


