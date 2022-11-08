# frozen_string_literal: true

require './kata/Five'

class FiveImpl < Five

  def self.gap(g, m, n)
    last_prime = nil
    (m..n).each do |num|
      unless last_prime.nil?
        num - last_prime == g ? (return [last_prime, num]) : last_prime = num
      else
        last_prime = num
      end if (2..(Math.sqrt(num).to_i)).none? { |n| num % n == 0 }
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
    a, b = 1, 2
    a, b, n = b, a + b, n - 1 while n > 0
    4 * (b - 1)
  end

  def self.solve(m)
    (2*m+1-(4*m+1)**0.5)/2/m
  end

  def self.smallest n
    s = n.to_s.each_char.with_index
    s.flat_map{|_,i|
      s.map{|_,j|
        x = n.to_s.chars
        [x.insert(j, x.delete_at(i)).join.to_i, i, j]
      }
    }.min
  end

end

