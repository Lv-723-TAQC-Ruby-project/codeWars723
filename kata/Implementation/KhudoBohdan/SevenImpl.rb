# frozen_string_literal: true

require './kata/Seven'
class SevenImpl < Seven
  # 10. Looking for a benefactor
  def self.new_avg(arr, new_avg)
    result = new_avg * (arr.count + 1) - arr.sum
    raise ArgumentError if result <= 0

    result.ceil
  end

  # 11. Sum of the first nth term of Series
  def self.series_sum(number)
    x = 1
    sum = 0
    i = 0

    while i < number
      sum += 1.0 / x
      x += 3
      i += 1
    end

    format('%.2f', sum)
  end

  # 12. Where is Vasya?
  def self.where_is_he(all, bef, aft)
    vasya = bef + 1
    vasya += 1 while all - vasya > aft
    all - vasya + 1
  end
end
