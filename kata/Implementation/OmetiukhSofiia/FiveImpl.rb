# frozen_string_literal: true

require './kata/Five'

module OmetiukhSofiiaFiveImpl
class FiveImpl < Five
  def self.gap(g, m, n)
    numbers = m.upto(n - 1).select(&:odd?)
    pair = nil
    numbers.each do |number|
      next unless is_prime(number)

      if is_prime(number + g) && (number + 1).upto(number + g - 1).none? { |b| is_prime(b) }
        pair = [number, number + g]
        break
      end
    end
    pair
  end

  def self.is_prime(number)
    return false if number <= 1

    (2..Math.sqrt(number)).each { |i| return false if (number % i).zero? }
  end

  def self.zeros(n)
    res = 0
    while n.positive?
      res += n / 5
      n /= 5
    end
    res
  end

  def self.perimeter(n)
    a = [0, 1]
    (2..n + 1).each do |i|
      a.append(a[i - 1] + a[i - 2])
    end
    a.sum * 4
  end

  def self.solve(m)
    s = Math.sqrt(4 * m + 1)
    (2 * m + 1 - s) / (2 * m)
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
end
