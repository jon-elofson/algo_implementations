def quicksort(arr)
  return arr if arr.length() <= 1
  pivot = arr[0]
  less_than_or_eq = []
  greater_than = []
  arr[1..-1].each do |int|
    if int <= pivot
      less_than_or_eq.push(int)
    else
      greater_than.push(int)
    end
  end
  return quicksort(less_than_or_eq) + [pivot] + quicksort(greater_than)
end


def quicksort_ip(arr)
  return arr if arr.length() <= 1
  pivot_idx = 0
  pivot_val = arr[0]
  (1...arr.length).each do |idx|
    if arr[idx] < pivot_val
      arr[idx], arr[pivot_idx] = arr[pivot_idx], arr[idx]
      pivot_idx += 1
      idx += 1
    end
  end
  return quicksort_ip(arr[0...pivot_idx]) + [pivot_val] + quicksort_ip(arr[pivot_idx+1..-1])
end
