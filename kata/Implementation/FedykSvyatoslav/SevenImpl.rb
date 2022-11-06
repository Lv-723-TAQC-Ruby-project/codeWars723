# frozen_string_literal: true

require './kata/Seven'

class SevenImpl < Seven
  def self.new_avg(arr, newavg)
    donations = (newavg * (arr.size + 1) - arr.sum).ceil
    raise 'Negative donations!' if  donations.negative?

    donations
  end

  def self.series_sum(n)
    format('%.2f', (0...n).inject(0) { |sum, i| sum + 1.0 / (1 + i * 3) })
  end

  def self.where_is_he(p, bef, aft)
    p - [bef + 1, p - aft].max + 1
  end
end
