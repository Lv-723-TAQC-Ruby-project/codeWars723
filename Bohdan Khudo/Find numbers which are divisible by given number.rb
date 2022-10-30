def divisible_by(numbers, divisor)
  result = []
  for n in numbers
    if n % divisor == 0
      result.append(n)
    end
  end
  return result
end

puts divisible_by([1,2,3,4,5,6], 2)