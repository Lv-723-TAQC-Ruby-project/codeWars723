# frozen_string_literal: true

require './kata/Seven'

module StanislavKovalovSevenImpl
  class SevenImpl < Seven
    def self.new_avg(arr, newavg)
      d = newavg * (arr.size + 1) - arr.sum
      d.positive? ? d.ceil : raise
    end

    def self.series_sum(n)
      sum = 0
      (1..n).each do |i|
        y = (i - 1) * 3 + 1
        sum += 1.0 / y
      end
      p '%.2f' % sum
    end

    def self.where_is_he(p, bef, aft)
      p - [bef + 1, p - aft].max + 1
    end
  end
end
