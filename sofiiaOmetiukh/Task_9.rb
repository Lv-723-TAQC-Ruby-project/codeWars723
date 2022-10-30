#Find numbers which are divisible by given number


def divisible_by(numbers, divisor)
  numbers.select { |n| n % divisor == 0 }
end

