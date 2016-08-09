class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload, left, right)
    @payload = payload
    @left = left
    @right = right
  end

  def add(tree)
    if tree.payload <= @payload
      if @left.nil?
        @left = tree
      else
        @left.add(tree)
      end
    else
      if @right.nil?
        @right = tree
      else
        @right.add(tree)
      end
    end
  end

  def output_in_order(ary)
    @left.output_in_order(ary) unless @left.nil?
    ary << @payload
    @right.output_in_order(ary) unless @right.nil?
  end

end

class TreeSort
  def sort(ary)
    if ary.length == 0
      return ary
    end
    #build binary tree
    root = BinaryTree.new(ary.shift, nil, nil)
    while ary.length > 0 do
      root.add(BinaryTree.new(ary.shift, nil, nil))
    end

    #return values in order
    ary = []
    root.output_in_order(ary)
    return ary
  end
end

BTreeSort = TreeSort.new()