class BinaryTree
  attr_accessor :payload, :left, :right

  def initialize(payload = nil, left = nil, right = nil)
    @payload = payload
    @left = left
    @right = right
  end

  def add(tree)
    if tree.payload < @payload
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

  def sort(ary)
    if ary.length == 0
      return ary
    end
    #build binary tree
    @payload = ary.shift
    while ary.length > 0 do
      raise ArgumentError, 'Argument is not numeric' unless ary.first.is_a? Numeric
      self.add(BinaryTree.new(ary.shift, nil, nil))
    end

    #return values in order
    ary = []
    self.output_in_order(ary)
    @payload = nil
    @left = nil
    @right = nil
    return ary
  end

end


BTreeSort = BinaryTree.new()
# puts BTreeSort.sort([0,3,4,1,7,12,89,23,14,25,1,2,3,99])
