#puts "Enter number: "

def perimeter(n)
  a, b, count, sum = 1, 1, 2, 2
  while count <= n.to_i
    a, b = b, a + b
    count += 1
    sum += b
  end
  4 * sum
end

#puts perimeter(gets)
