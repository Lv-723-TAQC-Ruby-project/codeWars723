def find_nb(m)
  n = 0
  while m > n
    n += 1
    m -= n ** 3
  end
  if m == 0
    return n
  else
    return -1
  end
end
puts find_nb(4183059834009)