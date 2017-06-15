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
    @right = BinarySearchNode.new(value)
    return @right
  end

end

def is_valid_bst(node, max_val=node.value, min_val=node.value)
  if !node.left or !node.right
    return true
  end
  if node.left
    left_val = node.left.value
    return false if left_val > node.value || left_val > max_val
    min_val = left_val if left_val <= min_val
    return false if !is_valid_bst(node.left, node.value, min_val)
  end
  if node.right
    right_val = node.right.value
    return false if right_val <= node.value || right_val <= min_val
    max_val = right_val if right_val > max_val
    return false if !is_valid_bst(node.right, max_val, node.value)
  end
  return true
end


def find_largest_val(root)
  if !root.right
    return root.value
  end
  return find_largest_val(root.right)
end

def second_largest_val(root)
  if !root.right && !root.left
    return nil
  elsif !root.right
    return find_largest_val(root.left)
  elsif !root.right.left && !root.right.right
    return root.value
  end
  second_largest_val(root.right)
end



root = BinarySearchNode.new(10)
root.insert_left(3)
root.left.insert_left(1)
root.left.insert_right(9)
root.insert_right(15)
# root.right.insert_right(16)
# root.right.insert_left(11)
# root.right.right.insert_right(19)

puts is_valid_bst(root)
puts second_largest_val(root)
