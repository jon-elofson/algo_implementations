def num_fibs_iter(num)
  if num == 0
    return []
  elsif num == 1
    return [0]
  end
  arr = [0,1]
  while arr.length() < num
      arr.push(arr[-2] + arr[-1])
  end
  return arr
end

def num_fibs_rec(num)
  if num == 0
    return []
  elsif num == 1
    return [1]
  elsif num == 2
    return [0, 1]
  end
  arr = num_fibs_rec(num-1)
  arr.push(arr[-2] + arr[-1])
  return arr
end
