def divisible_by(numbers, divisor)
    return numbers.select {|num| num % divisor == 0} 
end