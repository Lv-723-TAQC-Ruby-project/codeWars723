# frozen_string_literal: true

require './kata/Eight'

module KovalyovVladyslavEightImpl
  class EightImpl < Eight
    def self.litres(time)
      (time * 0.5).floor
    end

    def self.get_volume_of_cuboid(length, width, height)
      length * width * height
    end

    def self.converter(mpg)
      (mpg * 1.609344 / 4.54609188).round(2)
    end

    def self.square_or_square_root(arr)
      arr.map do |i|
        sqrt = Math.sqrt(i)
        (sqrt % 1).zero? ? sqrt : i**2
      end
    end

    def self.count_positives_sum_negatives(_lst)
      return sum if sum == []

      count = [0, 0]
      sum.each do |i|
        if i.positive?
          count[0] += 1
        else
          i.negative?
          count[1] += i
        end
      end
      count
    end

    def self.string_to_number(s)
      s.to_i
    end

    def self.am_I_Wilson(p)
      (p == 5) || (p == 13) || (p == 563)
    end

    def self.two_decimal_places(n)
      n.round(2)
    end

    def self.divisible_by(numbers, divisor)
      result = []
      numbers.each do |n|
        result.append(n) if (n % divisor).zero?
      end
      result
    end
  end
end
