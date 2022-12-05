# frozen_string_literal: true

require './kata/Eight'

module StanislavKovalovEightImpl
  class EightImpl < Eight
    def self.litres(time)
      (time * 0.5).floor
    end

    def self.converter(mpg)
      (mpg * 1.609344 / 4.54609188).round(2)
    end

    def self.get_volume_of_cuboid(length, width, height)
      length * width * height
    end

    def self.square_or_square_root(arr)
      (0..arr.length - 1).each do |a|
        rr = Math.sqrt(arr[a]).to_i
        arr[a] = if arr[a] == rr ** 2
                   Math.sqrt(arr[a]).to_i
                 else
                   arr[a] ** 2
                 end
      end
      arr
    end

    def self.count_positives_sum_negatives(lst)
      if [[], nil].include?(lst)
        []
      else
        [lst.count(&:positive?), lst.select(&:negative?).reduce(0, :+)]
      end
    end

    def self.string_to_number(s)
      s.to_i
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

    def self.am_I_Wilson(p)
      [5, 13, 563].include? p
    end
  end
end
