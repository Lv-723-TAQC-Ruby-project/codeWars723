def perimeter(n)
  4 * sum(n + 1)
end


def fib(n)
  a = 0
  b = 1
  i = 0
  while i < n
    a, b = b, a+b
    i += 1
  end

  return a

end

def sum(n)
  fib(n + 2) - 1
end

puts perimeter(7)
