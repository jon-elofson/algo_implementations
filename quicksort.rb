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
