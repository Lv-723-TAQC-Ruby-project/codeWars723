# frozen_string_literal: true

require './kata/Seven'

module BrylAndriiSevenImpl
  class SevenImpl < Seven
    def self.series_sum(n)
      sum = 0
      return '0.00' if n.zero?

      (1..n).each do |i|
        sum += 1.0 / (1 + (3 * (i - 1)))
      end

      '%.2f' % sum.to_s
    end

    def self.where_is_he(p, bef, aft)
      [p - bef, aft + 1].min
    end
  end
end
