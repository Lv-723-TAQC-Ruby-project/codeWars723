def perimeter (n)
  n1 = 1
  n2 = 1
  count = 0
  sum = 0
  for count in 1..n+1 do 
    sum+= n1
    m = n1 + n2
    n1 = n2
    n2 = m
    count+=1
  end
    return sum*4
end


