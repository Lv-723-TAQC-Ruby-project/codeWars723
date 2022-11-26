# frozen_string_literal: true

require './kata/Five'

module KmytiukNatalyiaFiveImpl
  class FiveImpl < Five
    # Gap in Primes
    def self.gap(gap, low, high)
      primes_between(low,high).each_cons(2).find { |(a,b)| b-a == gap }
    end

    def self.primes_between(low,high)
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
      n_arr = n.to_s.split('').map(&:to_i)

      if n_arr.each_index.select { |i| n_arr[i] == n_arr.min }.length == 1
        n_arr2 = n_arr.dup
        n_arr2.delete_at(0)
        ind = n_arr2.each_index.select { |i| n_arr2[i] == n_arr2.min }.max + 1
     # else
      #  ind = n_arr.each_index.select { |i| n_arr[i] == n_arr.min }.max
      end
      lowest = n_arr[ind]
    end
  end
end
