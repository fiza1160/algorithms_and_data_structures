class Node
    def initialize(value=nil)
        @value = value
        @next = nil
        @previous = nil
    end
    
    attr_accessor :value, :next, :previous
end

class LinkedList
    def initialize()
        @first = nil
        @last = nil
        @length = 0
    end

    def add_last(value)
        node = Node.new(value)
        if @length == 0 then
            @first = node
        else
            @last.next = node
            node.previous = @last
        end
        @last = node
        @length += 1
    end

    def remove_last
        if @length > 0
            if @length == 1
                @first = nil
                @last = nil
            else
                @last = @last.previous
                @last.next = nil
            end
            @length -= 1
            return true
        end
        return false
    end

    def to_s
        node = @first
        until node.nil?
            puts "node: #{node.value}, next: #{if node.next.nil? == false then node.next.value end}, \
previous: #{if node.previous.nil? == false then node.previous.value end}"
            node = node.next
        end
    end

    attr_accessor :first, :last, :length
end


if __FILE__ == $0
    linked_list = LinkedList.new

    linked_list.add_last(5)
    linked_list.add_last("kjhkhk")
    linked_list.add_last(4)
    linked_list.add_last(13)
    linked_list.add_last(44)

    puts linked_list

    linked_list.remove_last
    puts linked_list

    linked_list.remove_last
    puts linked_list
end
