def divisible_by(numbers, divisor)
    result = []
    for n in numbers
      if n % divisor == 0
        result.append(n)
      end
    end
    return result
end