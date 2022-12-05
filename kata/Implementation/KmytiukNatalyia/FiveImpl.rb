# frozen_string_literal: true

require './kata/Five'

module KmytiukNatalyiaFiveImpl
  class FiveImpl < Five
    # Gap in Primes
    def self.gap(gap, low, high)
      primes_between(low, high).each_cons(2).find { |(a, b)| b - a == gap }
    end

    def self.primes_between(low, high)
      Prime.each(high).select { |prime| prime >= low }
    end

    def self.zeros(n)
      return 0 if n.zero?

      num = 0
      while n > 5
        n /= 5
        num += n
      end
      num
    end

    def self.perimeter(n)
      n1 = 1
      n2 = 1
      count = 0
      sum = 0
      (1..n + 1).each do |count|
        sum += n1
        m = n1 + n2
        n1 = n2
        n2 = m
        count += 1
      end
      sum * 4
    end

    def self.solve(m)
      return (2 * m + 1 - (4 * m + 1) ** 0.5) / (2 * m)
    end

    def self.smallest(n)
      result = [n]
      size = n.to_s.size
      size.times do |i1|
        size.times do |i2|
          digits = n.to_s
          x = digits.slice!(i1)
          digits.insert(i2, x)
          result = [digits.to_i, i1, i2] if digits.to_i < result.first
        end
      end
      result
    end
  end
end
