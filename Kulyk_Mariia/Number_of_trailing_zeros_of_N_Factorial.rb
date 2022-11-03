puts "Enter number: "

def zeros(n)
  s = 0
  while n >= 5
    s += n / 5
    n /= 5
  end
  s
end

puts zeros(gets.to_i)
