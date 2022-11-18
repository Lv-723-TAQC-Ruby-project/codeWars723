# frozen_string_literal: true

require './kata/Five'

module KulykMariiaFiveImpl
  class FiveImpl < Five
    # Gap in Primes
    def self.gap(gap, low, high)
      primes_between(low, high).each_cons(2).find { |(a, b)| b - a == gap }
    end

    def self.primes_between(low, high)
      Prime.each(high).select { |prime| prime >= low }
    end

    # Trailing zeros in factorial
    def self.zeros(num)
      s = 0
      while num >= 5
        s += num / 5
        num /= 5
      end
      s
    end

    # Perimeter of squares in a rectangle
    def self.perimeter(num)
      a = 1
      b = 1
      count = 2
      sum = 2
      while count <= num.to_i
        a, b = b, a + b
        count += 1
        sum += b
      end
      4 * sum
    end

    # Which x for that sum?
    def self.solve(m)
      b = -2 * m - 1

      (-b - Math.sqrt(b**2 - 4 * m * m)) / (2 * m)
    end

    # Find the smallest
    def self.smallest(n)
      smallest = [n]

      n.to_s.length.times do |i|
        n.to_s.length.times do |j|
          num_str = n.to_s
          d = num_str.slice!(i)
          num_str.insert(j, d)
          smallest = [num_str.to_i, i, j] if num_str.to_i < smallest.first
        end
      end
      smallest
    end
  end
end
