# frozen_string_literal: true

require './kata/Eight'

module StanislavKovalovEightImpl
  class EightImpl < Eight
    def self.litres(time)
      puts 'Lol'
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
      return lst if lst == []

      result = [0, 0]
      lst.each do |a|
        if a.positive?
          result[0] += 1
        elsif a.negative?
          result[1] += a
        end
      end
      result
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
  end
end
