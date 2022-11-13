# frozen_string_literal: true

require './kata/Five'

module KulykMariiaFiveImpl
  class FiveImpl < Five

    def zeros(n)
      s = 0
      while n >= 5
        s += n / 5
        n /= 5
      end
      s
    end
  
    def perimeter(n)
      a, b, count, sum = 1, 1, 2, 2
      while count <= n.to_i
        a, b = b, a + b
        count += 1
        sum += b
      end
      4 * sum
    end
  
    def smallest(n)
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
