puts "Enter numbers and divisor"

def divisible_by(numbers, divisor)
  numbers.select{ |n| n % divisor == 0 }
end

puts divisible_by(gets, gets)