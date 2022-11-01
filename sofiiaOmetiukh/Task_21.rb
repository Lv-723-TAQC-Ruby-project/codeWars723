#Number of trailing zeros of N!
puts "Enter the number: "
n = gets.to_i
def zeros(n)
  res = 0
  while n > 0 do
    res += n / 5
    n = n / 5
  end
  res
end

puts zeros(n)