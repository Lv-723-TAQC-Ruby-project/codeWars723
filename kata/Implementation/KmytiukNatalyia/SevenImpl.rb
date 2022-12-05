# frozen_string_literal: true

require './kata/Seven'

module KmytiukNatalyiaSevenImpl
  class SevenImpl < Seven
    def self.new_avg(arr, newavg)
      i = if arr == [] then
            0
          else
            arr.inject { |sum, x| sum + x }
          end
      res = (arr.length + 1) * newavg - i

      return res.ceil if res.positive?

      raise ArgumentError
    end

    def self.series_sum(n)
      sum = 0
      return '0.00' if n.zero?

      (1..n).each do |i|
        sum += 1.0 / (1 + (3 * (i - 1)))
      end

      '%.2f' % sum.to_s
    end

    def self.where_is_he(p, bef, _aft)
      p - bef
    end
  end
end
