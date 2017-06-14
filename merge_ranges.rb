def merge_ranges(arr)
  result = []
  sorted_meetings = arr.sort_by {|x| x[0]}
  sorted_meetings.each_with_index do |range, idx|
    if idx == 0
      result << range
      next
    end
    prev_range = result[-1]
    if range[0] <= prev_range[1]
      result[-1] = [[range[0], prev_range[0]].min, [range[1], prev_range[1]].max]
    else
      result << range
    end
  end
  result
end

print merge_ranges([[1,2],[6,7],[2,5],[10,12],[11,14],[3,4]])
