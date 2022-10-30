#Sum of the first nth term of Series

puts "Enter the number"
n = gets.to_f
def series_sum(n)
  number = 1
  res = 0
  t = 0
while t < n
  res += 1.0/number
  number +=3
  t += 1
end
format("%.2f", res)
end

puts series_sum(n)