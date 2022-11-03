require 'prime'

def gap(g, m, n)

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

puts gap(6,100,110)

