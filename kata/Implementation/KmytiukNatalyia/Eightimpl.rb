# frozen_string_literal: true

require './kata/Eight'

module KmytiukNatalyiaEightImpl
  class Eightimpl < Eight
    def self.littres(time)
      (time / 2).floor
    end

    def self.get_volume_of_cuboid(length, width, height)
      length * width * height
    end

    def self.converter(mpg)
      (mpg * 1.609344 / 4.54609188).round(2)
    end

    def self.square_or_square_root(arr)
      arr.map! do |n|
        s = Math.sqrt(n)
        (s - s.floor).zero? ? s.to_i : n ** 2
      end
    end

    def self.count_positives_sum_negatives(lst)
      positives = []
      negatives = []
      return [] if lst == []

      lst.each do |n|
        if n.positive?
          positives << n
        else
          negatives << n
        end
      end
      [positives.count, negatives.sum]
    end

    def self.am_i_wilson(p)
      [5, 13, 563].include?p
    end

    def self.two_decimal_places(n)
      n.round(2)
    end

    def self.divisible_by(numbers, divisor)
      new = []
      numbers.each do |i|
        new << i if (i % divisor).zero?
      end
      new
    end
  end
end
