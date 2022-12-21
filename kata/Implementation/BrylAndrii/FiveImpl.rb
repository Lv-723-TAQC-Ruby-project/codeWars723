# frozen_string_literal: true

require './kata/Five'
require 'prime'

module BrylAndriiFiveImpl
  class FiveImpl < Five
    # Gap in Primes
    def self.gap(g, m, n)
      numbers = (m).upto(n - 1).select { |b| b.odd? }
      pair = nil
      numbers.each do |number|
        next unless is_prime?(number)
        if is_prime?(number + g) && !(number + 1).upto(number + g - 1).any? { |b| is_prime?(b) }
          pair = [number, number + g]
          break
        end
      end
      pair
    end

    def self.is_prime?(number)
      return false if number <= 1
      (2..Math.sqrt(number)).each { |i| return false if (number % i).zero? }
    end

    # Number of trailing zeros of N!
    def self.zeros(n)
      n < 5 ? 0 : (n / 5) + zeros(n / 5)
    end

    # Perimeter of squares in a rectangle
    def self.perimeter(n)
      fib = [1, 1]
      (n - 1).times do
        fib << fib[-1] + fib[-2]
      end
      fib.inject(:+) * 4
    end

    # Which x for that sum?
    def self.solve(m)
      1 + (1 - (4 * m + 1) ** 0.5) / (2 * m)
    end

    # Find the smallest
    def self.smallest(n)
      n_arr = n.to_s.split("").map { |num| num.to_i }

      if n_arr.each_index.select { |i| n_arr[i] == n_arr.min }.length == 1
        n_arr2 = n_arr.dup
        n_arr2.delete_at(0)
        ind = n_arr2.each_index.select { |i| n_arr2[i] == n_arr2.min }.max + 1
      end
      lowest = n_arr[ind]
      insert = n_arr.each_index.detect { |i| n_arr[i] > lowest }

      if n_arr[1] == 0
        n_arr.delete_at(1)
        [n_arr.join.to_i, 0, 1]
      else
        n_arr.delete_at(ind)
        n_arr.insert(insert, lowest)
        [n_arr.join.to_i, ind, insert]
      end
    end
  end
end
