def series_sum(n)
 sum = 0
  if n == 0
    return "0.00"
  else
    for i in 1..n 
      sum += 1.0/(1+(3*(i-1)))
    end
  end

  return "%.2f" % sum.to_s
 
end