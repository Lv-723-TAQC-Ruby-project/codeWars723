# frozen_string_literal: true

require './kata/Five'

class FiveImpl < Five

  # 20. Gap in Primes
  def self.gap (g, m, n)
    (m..n).each do |i|
      return [i, i + g] if Prime.prime?(i) && Prime.prime?(i + g) && (i + 1..i + g - 1).none? { |num| Prime.prime? num }
    end
    nil
  end

  # 21. Trailing zeros in factorial
  def self.zeros(n)
    0 if n < 5
    count = 0
    while n >= 5
      n /= 5
      count += n
    end
    count
  end

  # 22. Perimeter of squares in a rectangle
  def fib(n)
    total_sum = 1
    first_num = 1
    second_num = 1
    n.times do
      total_sum += second_num
      first_num, second_num = second_num, first_num + second_num
    end
    total_sum * 4
  end

  # 23. Which x for that sum?
  def self.solve(m)
    (2 * m + 1 - Math.sqrt(4 * m + 1)) / (2 * m)
  end

  # 24. Find the smallest
  def self.smallest(n)
    lowest_number = n
  array_to_return = []
  length = n.to_s.length
  length.times do |loop_1|
    length.times do |loop_2|
      number_to_compare = n.to_s
      number_to_compare.insert(loop_2, number_to_compare.slice!(loop_1))
      if number_to_compare.to_i < lowest_number
        lowest_number = number_to_compare.to_i
        array_to_return = [lowest_number.to_i, loop_1, loop_2]
      end
    end
  end
  array_to_return
  end

end
