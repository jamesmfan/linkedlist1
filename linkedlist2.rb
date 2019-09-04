class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  print "#{list_node.value} --> "
  if list_node.next_node.nil?
    print "nil\n"
    return
  else
    print_values(list_node.next_node)
  end
end
def reverse_list(list, previous=nil)
  current_head = list.next_node
  list.next_node = previous
  if current_head
    reverse_list(current_head, list)
  else
    list
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(05, node3)
node5 = LinkedListNode.new(84, node4)
print_values(node5)
puts "-------"
revlist = reverse_list(node5)
print_values(revlist)