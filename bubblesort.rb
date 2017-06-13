def bubblesort(arr)
  move_made = true
  until not move_made
    move_made = false
    (0...arr.size-1).each do |idx|
      if arr[idx] > arr[idx + 1]
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
        move_made = true if not move_made
      end
    end
  end
  arr
end
