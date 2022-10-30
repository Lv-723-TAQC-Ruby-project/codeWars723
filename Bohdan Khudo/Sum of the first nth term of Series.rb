def series_sum(n)
  x = 1
  sum = 0
  i = 0

  while i < n
    sum += 1.0/x
    x +=3
    i += 1
  end

  return  format("%.2f", sum)

end

puts series_sum(3)