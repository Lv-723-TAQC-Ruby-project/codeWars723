# frozen_string_literal: true

require './kata/Eight'

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
    arr.map do |n|
      sqrt = Math.sqrt(n)
      (sqrt % 1).zero? ? sqrt : n**2
    end
  end

  def self.count_positives_sum_negatives(lst)
    return [] if lst.zero?

    pos = 0
    neg = 0
    lst.each do |i|
      if i.positive?
        pos += 1
      else
        neg += i
      end
    end

    def self.string_to_number(s)
      s.to_i
    end

    def self.am_I_Wilson(p)
      [5, 13, 563].include? p
    end

    def self.two_decimal_places(n)
      n.round(2)
    end

    def self.divisible_by(numbers, divisor)
      numbers.select { |n| (n % divisor).zero? }
    end
  end
end
