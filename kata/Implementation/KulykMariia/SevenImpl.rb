# frozen_string_literal: true

require './kata/Seven'

module KulykMariiaSevenImpl
  class SevenImpl < Seven
    def self.new_avg(arr, newavg)
      result = (arr.length + 1) * newavg - arr.reduce(0) { |sum, n| sum + n }
      result <= 0 ? (raise ArgumentError) : result.ceil
    end

    def self.series_sum(n)
      return '0.00' if n.zero?

      value = 0.0
      start = 1.0

      n.times do
        value += (1.0 / start)
        start = 3.0
      end
      '%.2f' % value
    end
  end
end
