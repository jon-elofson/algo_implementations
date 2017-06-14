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


def quicksort_ip(arr, start_idx=0, len=arr.length)
  return arr if len <= 1
  pivot_idx = start_idx
  pivot_val = arr[start_idx]
  ((start_idx + 1)...(start_idx + len)).each do |idx|
    current_el = arr[idx]
    if current_el < pivot_val
      arr[idx] = arr[pivot_idx+1]
      arr[pivot_idx + 1] = pivot_val
      arr[pivot_idx] = current_el
      pivot_idx += 1
    end
  end
  left_len = pivot_idx - start_idx
  right_len = len - (left_len + 1)
  quicksort_ip(arr, start_idx, left_len)
  quicksort_ip(arr, pivot_idx+1, right_len)
  arr
end
