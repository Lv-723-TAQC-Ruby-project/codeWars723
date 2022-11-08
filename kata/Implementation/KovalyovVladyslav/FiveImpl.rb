# frozen_string_literal: true

require './kata/Five'

class FiveImpl < Five
  def self.gap(g, m, n)
    last_prime = nil
    (m..n).each do |num|
      if (2..(Math.sqrt(num).to_i)).none? { |n| (num % n).zero? }
        if last_prime.nil?
          last_prime = num
        else
          num - last_prime == g ? (return [last_prime, num]) : last_prime = num
        end
      end
    end
    nil
  end

  def self.zeros(n)
    s = 0
    while n > 4
      s += n / 5
      n /= 5
    end
    s
  end

  def self.perimeter(n)
    a = 1
    b = 2
    a, b, n = b, a + b, n - 1 while n.positive?
    4 * (b - 1)
  end

  def self.solve(m)
    (2 * m + 1 - (4 * m + 1)**0.5) / 2 / m
  end

  def self.smallest(n)
    s = n.to_s.each_char.with_index
    s.flat_map do |_, i|
      s.map do |_, j|
        x = n.to_s.chars
        [x.insert(j, x.delete_at(i)).join.to_i, i, j]
      end
    end.min
  end
end
