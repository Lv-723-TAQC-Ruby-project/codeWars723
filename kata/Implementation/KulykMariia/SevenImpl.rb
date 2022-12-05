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
      return "0.00" if n == 0
      start = 1.0
      value = 0.0

      n.times do
        value += (1.0 / start)
        start += 3.0
      end

      "%.2f" % value
    end

    # Where is Vasya?
    def self.where_is_he(pos, bef, aft)
      pos + 1 - [bef + 1, pos - aft].max
    end
  end
end
