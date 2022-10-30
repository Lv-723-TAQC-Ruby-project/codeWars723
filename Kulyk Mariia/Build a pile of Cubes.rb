def find_nb(m)
  n = 1
  sum = 1
  while sum < m
    n += 1
    sum += n**3
  end
  return sum == m ? n : -1
end
