# frozen_string_literal: true

require './kata/Seven'

module KulykMariiaSevenImpl
  class SevenImpl < Seven
    # Looking for a benefactor
    def self.new_avg(arr, newavg)
      result = (arr.length + 1) * newavg - arr.reduce(0) { |sum, n| sum + n }
      result <= 0 ? (raise ArgumentError) : result.ceil
    end

    # Sum of the first nth term of Series
    def self.series_sum(n)
      sum = 0
      if n == 0
        return "0.00"
      else
        (1..n).each { |i|
          sum += 1.0 / (1 + (3 * (i - 1)))
        }
      end

      return "%.2f" % sum.to_s
    end

    # Where is Vasya?
    def self.where_is_he(pos, bef, aft)
      pos + 1 - [bef + 1, pos - aft].max
    end
  end
end
