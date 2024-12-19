class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def insert_at_head(data)
    node = Node.new(data)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next = @head
      @head = node
    end
  end

  def insert_at_tail(data)
    node = Node.new(data)
    if @tail.nil?
      @head = node
      @tail = node
    else
      @tail.next = node
      @tail = node
    end
  end

  def display
    current = @head
    while current
      print "#{current.data} -> "
      current = current.next
    end
    puts "nil"
  end

  def delete_node(data)
    if @head.nil?
      return
    end

    if @head.data == data
      @head = @head.next
      return
    end

    current = @head
    while current.next
      if current.next.data == data
        current.next = current.next.next
        return
      end
      current = current.next
    end
  end
end
LinkedList