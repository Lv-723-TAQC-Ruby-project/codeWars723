# frozen_string_literal: true

require './kata/Seven'

class SevenImpl < Seven
  def self.new_avg(arr, newavg)
    x = (newavg * (arr.length + 1) - arr.sum).ceil
    raise 'Inappropriate donation amount' if x <= 0

    x
  end

  def self.series_sum(n)
    number = 1
    res = 0
    t = 0
    while t < n
      res += 1.0 / number
      number += 3
      t += 1
    end
    format('%.2f', res)
  end

  def self.where_is_he(p, bef, aft)
    p - [bef + 1, p - aft].max + 1
  end
end
