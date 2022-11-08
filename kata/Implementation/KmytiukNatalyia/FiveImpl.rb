# frozen_string_literal: true

require './kata/Five'

class FiveImpl < Five
  def gap(g, m, n)
    m += 1 if m.even?
    (m..n).each do |i|
      next unless is_prime(i)
      return [i, i + g] if is_prime(i + g) && (i + 1..i + g - 1).none? { |num| is_prime num }
    end
    nil
  end

  def is_prime(n)
    (2..Math.sqrt(n).round).each { |i| return false if (n % i).zero? }
    true
  end
end

def zeros(n)
  return 0 if n.zero?

  num = 0
  while n > 5
    n /= 5
    num += n
  end
  num
end

def perimeter(n)
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

def solve(m)
  return (2 * m + 1 - (4 * m + 1)**0.5) / (2 * m)
  puts solve(8)
  puts solve(2)
end

def smallest(n)
  n_arr = n.to_s.split('').map(&:to_i)

  if n_arr.each_index.select { |i| n_arr[i] == n_arr.min }.length == 1
    n_arr2 = n_arr.dup
    n_arr2.delete_at(0)
    ind = n_arr2.each_index.select { |i| n_arr2[i] == n_arr2.min }.max + 1
  else
    ind = n_arr.each_index.select { |i| n_arr[i] == n_arr.min }.max
  end
  lowest = n_arr[ind]
end
