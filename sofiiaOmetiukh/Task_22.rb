#Perimeter of squares in a rectangle
puts "Enter the quantity of squares: "
n = gets.to_i
def perimeter(n)
  a=[0,1]
  for i in (2..n+1)
    a.append(a[i-1]+a[i-2])
  end
  return a.sum*4
end

puts perimeter (n)