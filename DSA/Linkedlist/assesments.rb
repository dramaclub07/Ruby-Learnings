
=begin
Basic Problems
Create a Linked List:

Write a Ruby class to implement a singly linked list. Include methods to:
Insert a node at the head.
Insert a node at the tail.
Display the linked list.

Delete a Node:
Write a function to delete a node by its value from a linked list.
Search for a Value:

Implement a method to search for a value in the linked list and return its position (0-based index).
Find the Length:

Write a method to calculate the number of nodes in the linked list.
Reverse a Linked List:

Implement a function to reverse the nodes in a linked list.
=end


class Node
  attr_accessor :value, :next

  def initialize(value)
    @value = value
    @next = nil
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def insert_at_head(value)
    node = Node.new(value)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next = @head
      @head = node
    end
  end

  def insert_at_tail(value)
    node = Node.new(value)
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
      print "#{current.value} -> "
      current = current.next
    end
    puts "nil"
  end

  def delete(value)
    if @head.nil?
      return
    end

    if @head.value == value
      @head = @head.next
      return
    end

    current = @head
    while current.next
      if current.next.value == value
        current.next = current.next.next
        return
      end
      current = current.next
    end
  end

  def search(value)
    index = 0
    current = @head
    while current
      if current.value == value
        return index
      end
      index += 1
      current = current.next
    end
    return -1
  end

  def length
    count = 0
    current = @head
    while current
      count += 1
      current = current.next
    end
    return count
  end

  def reverse
    prev = nil
    current = @head
    while current
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    @head, @tail = @tail, @head
  end
end