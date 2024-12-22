class ListNode
  attr_accessor :val, :next

  def initialize(val)
    @val = val
    @next = nil
  end
end

def delete_node(node)
  return if node.nil? || node.next.nil?
  node.val = node.next.val
  node.next = node.next.next
end

# Create linked list 4 -> 5 -> 1 -> 9
head = ListNode.new(4)
node2 = ListNode.new(5)
node3 = ListNode.new(1)
node4 = ListNode.new(9)
head.next = node2
node2.next = node3
node3.next = node4

delete_node(node3) # Deletes node with value 5

# Print linked list after deletion
current = head
while current
  print "#{current.val} -> "
  current = current.next
end
puts "nil"
