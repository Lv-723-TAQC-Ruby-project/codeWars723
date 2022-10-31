def divisible_by(numbers, divisor)
    numbers.select {|number| number % divisor == 0 ? number : nil}
end