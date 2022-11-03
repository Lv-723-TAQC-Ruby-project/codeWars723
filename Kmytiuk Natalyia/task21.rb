def zeros(n)
  return 0 if n.zero?
  num=0
  while(n>5)
    n/=5
    num+=n
  end
  return num
end