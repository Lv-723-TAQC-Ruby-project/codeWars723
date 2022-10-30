def new_avg(arr, newavg)
  result = newavg * (arr.count + 1) - arr.sum
  if result <= 0
    raise ArgumentError
  end
  return result.ceil
end

puts new_avg([14, 30, 5, 7, 9, 11, 15], 2)