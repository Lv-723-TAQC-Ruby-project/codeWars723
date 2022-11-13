# frozen_string_literal: true

require './kata/Five'
require 'prime'

module KhudoBohdanFiveImpl
  class FiveImpl < Five
    # 20. Gap in Primes
    def self.gap(g_arg, m_arg, n_arg)
      result = []
      i = m_arg
      while i <= n_arg - g_arg
        if Prime.prime?(i) && (Prime.prime? i + g_arg)
          clean_gap = true
          j = i + 1
          while j < i + g_arg
            clean_gap = false if Prime.prime? j
            j += 1
          end
          if clean_gap
            result.append(i)
            result.append(i + g_arg)
            break
          end
        end
        i += 1
      end
      return nil if result == []

      result
    end

    # 21. Trailing zeros in factorial
    def self.zeros(num)
      count = 0
      i = 5
      while num / i >= 1
        count += num / i
        i *= 5
      end
      count
    end

    # 22. Perimeter of squares in a rectangle
    def fib(num)
      a = 0
      b = 1
      i = 0
      while i < num
        a, b = b, a + b
        i += 1
      end
      a
    end

    def sum(num)
      fib(num + 2) - 1
    end

    def self.perimeter(num)
      4 * sum(num + 1)
    end

    # 23. Which x for that sum?
    def self.solve(m_arg)
      (1 - Math.sqrt(4 * m_arg + 1)) / (2 * m_arg) + 1
    end

    # 24. Find the smallest
    def self.smallest(num)
      min = num
      f = t = i = j = 0

      while i <= num.to_s.size
        while j <= num.to_s.size
          arr = num.to_s.chars
          char = arr[i]
          arr.delete_at(i)
          arr.insert(j, char)
          number = arr.join('').to_i
          if number < min
            min = number
            f = i
            t = j
          end

          j += 1
        end
        j = 0
        i += 1
      end

      [min, f, t]
    end
  end
end
