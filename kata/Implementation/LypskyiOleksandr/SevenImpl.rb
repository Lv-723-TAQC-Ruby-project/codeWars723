# frozen_string_literal: true

require './kata/Seven'

module LypskyiOleksandrSevenImpl
  class SevenImpl < Seven
    # 10. Looking for a benefactor
    def self.new_avg(arr, newavg)
      expected_donation = newavg * (arr.length + 1) - arr.sum
      expected_donation.positive? ? expected_donation.ceil : raise
    end

    # 11. Sum of the first nth term of Series
    def self.series_sum(n)
      value = 0
      number = 1.0
      n.times do
        value += 1 / number
        number += 3
      end
      format('%.2f', value).to_s
    end

    # 12. Where is Vasya?
    def self.where_is_he(p, bef, aft)
      p - bef > aft + 1 ? aft + 1 : p - bef
    end
  end
end
