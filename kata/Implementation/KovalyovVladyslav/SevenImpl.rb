# frozen_string_literal: true

require './kata/Seven'

module KovalyovVladyslavSevenImpl
class SevenImpl < Seven
  def self.new_avg(arr, newavg)
    d = newavg * (arr.size + 1) - arr.sum
    d.positive? ? d.ceil : raise
  end

  def self.series_sum(n)
    sum = 0
    n.times { |i| sum += 1.0 / (1 + i * 3) }
    '%.2f' % sum.round(2)
  end

  def self.where_is_he(p, bef, aft)
    p - [bef + 1, p - aft].max + 1
  end
end
end
