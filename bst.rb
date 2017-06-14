class BinarySearchNode

  attr_accessor :value
  attr_reader :left, :right

  def initialize(value)
    @value = value
    @right = right
    @left = left
  end

  def insert_left(value)
    @left = BinarySearchNode.new(value)
    return @left
  end

  def insert_right(value)
    @right = BinarySearchNode.new(vale)
    return @right
  end

end

def is_valid_bst(node, max_val=node.value, min_value=node.value)
  if !node.left or !node.right
    return true
  end
end



root = BinarySearchNode.new(10)
puts is_valid_bst(root)
