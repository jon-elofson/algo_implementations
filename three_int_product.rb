def three_int_product(arr)
  highest_three_vals = arr[0..2]
  return highest_three_vals.inject(:*) if arr.length == 3
  third_highest_val = highest_three_vals.min
  arr[3..-1].each do |val|
    if val > third_highest_val
      lowest_idx = highest_three_vals.index(third_highest_val)
      highest_three_vals[lowest_idx] = val
      third_highest_val = highest_three_vals.min
    end
  end
  return highest_three_vals.inject(:*)
end

puts three_int_product([1,2,30,4,5,6])
