# frozen_string_literal: true

require './kata/Five'

module StanislavKovalovFiveImpl
  class FiveImpl < Five
    require 'prime'
    def self.gap(g, m, n)
      Prime.each(n).select { |p| p >= m }.each_cons(2).find { |a, b| b - a == g }
    end

    def self.zeros(n)
      zeros = 0
      zeros += n /= 5 while n >= 1
      zeros
    end

    def self.perimeter(n)
      numbers = [0, 1]
      n.times { numbers.append(numbers[-2] + numbers[-1]) }
      numbers.sum * 4
    end

    def self.solve(m)
      (2 * m + 1 - (4 * m + 1)**0.5) / 2 / m
    end

    def self.smallest(n)
      n = n.to_s.chars
      [*(0...n.length)].permutation(2).map do |i, j|
        m = n.dup
        m.insert j, m.delete_at(i)
        [m.join.to_i, i, j]
      end.min_by(&:first)
    end
  end
end
