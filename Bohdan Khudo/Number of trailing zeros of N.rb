def zeros(n)
  count = 0
  i = 5
  while n / i >= 1
    count += n / i
    i *=5
  end
  return count
end
