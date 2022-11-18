# frozen_string_literal: true

require './kata/Five'
require 'prime'

module BrylAndriiFiveImpl
  class FiveImpl < Five
    # Gap in Primes
    def self.gap(g, m, n)
      (m..n).each do |i|
        next unless (2..(Math.sqrt(i).to_i)).none? { |n| (i % n).zero? }
        return [i, i + g] if (2..(Math.sqrt(i + g).to_i)).none? { |n| ((i + g) % n).zero? }
      end
      nil
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
    def self.solve(m) end

    # Find the smallest
    def self.smallest(n) end
  end
end
