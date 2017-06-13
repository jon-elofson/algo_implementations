def mergesort(arr)
  return arr if arr.count <= 1
  mid = arr.count / 2
  merge(mergesort(arr[0...mid]), mergesort(arr[mid..-1]))
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    result << (left[0] <= right[0] ? left : right).shift
  end
  result.concat(left).concat(right)
end
