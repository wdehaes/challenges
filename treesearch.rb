class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue.push(item)
  end

  def dequeue
    @queue.shift
  end

  def length
    @queue.length
  end
end

class Tree
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

  def depth_search(value)
    if @payload == value
      value
    else  
      children.each do |child|
        child.depth_search(value)
      end
    end
  end

end


def breadth_search(tree, value)
  queue = Queue.new

  queue.enqueue(tree)
  solution = nil
  found = false

  until queue.length == 0 || found do

    current_tree = queue.dequeue

    if current_tree.payload == value
      solution = current_tree
      found = true
    else
      current_tree.children.each do |child|
        queue.enqueue(child)
      end     
    end

  end

  return solution.payload unless solution.nil?
    
end


# The "Leafs" of a tree, elements that have no children
deep_fifth_node = Tree.new(5, [])
eleventh_node = Tree.new(11, [])
fourth_node   = Tree.new(4, [])

# The "Branches" of the tree
ninth_node = Tree.new(9, [fourth_node])
sixth_node = Tree.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Tree.new(7, [sixth_node])
shallow_fifth_node = Tree.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Tree.new(2, [seventh_node, shallow_fifth_node])

puts trunk.depth_search(14)

puts "should be found:"
puts breadth_search(trunk, 11)
puts "should be nil"
puts breadth_search(trunk, 14)
