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


def toinfinity(tortoise, hare=tortoise.next_node)
  if tortoise == hare
    true
  elsif hare.nil? or hare.next_node.nil?
    false
  else  
    tortoise = tortoise.next_node
    hare = hare.next_node.next_node  
    toinfinity(tortoise, hare)

  end
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)
node1.next_node = node3

puts toinfinity(node1)