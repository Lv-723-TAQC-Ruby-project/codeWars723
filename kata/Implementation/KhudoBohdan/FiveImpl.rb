require './kata/Five'
require 'prime'

class FiveImpl < Five

  # 20. Gap in Primes
  def self.gap (g, m, n)
    result = []
    i = m
    while i <= n - g
      if Prime.prime? i
        if Prime.prime? i + g
          clean_gap = true
          j = i + 1
          while j < i + g
            if Prime.prime? j
              clean_gap = false
            end
            j += 1
          end
          if clean_gap
            result.append(i)
            result.append(i + g)
            break
          end
        end
      end
      i += 1
    end
    if result == []
      return nil
    end
    return result
  end

  # 21. Trailing zeros in factorial
  def self.zeros(n)
    count = 0
    i = 5
    while n / i >= 1
      count += n / i
      i *=5
    end
    return count
  end

  # 22. Perimeter of squares in a rectangle
  def fib(n)
    a = 0
    b = 1
    i = 0
    while i < n
      a, b = b, a+b
      i += 1
    end
    a
  end

  def sum(n)
    fib(n + 2) - 1
  end

  def self.perimeter(n)
    4 * sum(n + 1)
  end

  # 23. Which x for that sum?
  def self.solve(m)
    (1 - Math.sqrt(4*m+1)) / (2*m)+1
  end

  # 24. Find the smallest
  def self.smallest(n)
    min = n
    f = t = i = j = 0

    while i <= n.to_s.size
      while j <= n.to_s.size
        arr = n.to_s.chars
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
