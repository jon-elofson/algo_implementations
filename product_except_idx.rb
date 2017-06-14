def product_except_idx_brute(arr)
  result = []
  arr.each_with_index do |el, idx1|
    product = 1
    arr.each_with_index do |other_el, idx2|
      product *= other_el if idx2 != idx1
    end
    result << product
  end
  result
end

def product_except_idx(arr)
  result = []
  product_so_far = 1
  arr.each do |el|
    result << product_so_far
    product_so_far *= el
  end
  current_idx = arr.length - 1
  product_so_far = 1
  (arr.length - 1).downto(0) do |idx|
    result[idx] *= product_so_far
    product_so_far *= arr[idx]
  end
  result
end

puts product_except_idx_brute([7,1,2,3])
puts product_except_idx([7,1,2,3])
