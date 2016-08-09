class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

def reverse_list(list, previous=nil)
    tail = LinkedListNode.new(list.value, previous)
  if list.next_node
    # puts "current list -> #{list.value}"
    # puts "next list -> #{list.next_node.value}"
    # puts "----------"

    reverse_list(list.next_node, tail)
  else
    tail
  end

  # do stuff
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node4 = LinkedListNode.new(55, node3)
 
print_values(node4)

revlist =reverse_list(node4)

print_values(revlist)