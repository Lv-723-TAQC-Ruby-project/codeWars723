# frozen_string_literal: true

require './kata/Eight'
module BrylAndriiEightImpl
  class EightImpl < Eight
    # Keep Hydrated!
    def self.litres(time)
      litres = time / 2
      litres.floor
    end

    # Volume
    def self.get_volume_of_cuboid(length, width, height)
      length * width * height
    end

    # Miles per gallon to kilometers per liter
    def self.converter(mpg)
      kpl = mpg * 0.3540060435382138
      kpl.round(2)
    end

    # To square root or no to square
    def self.square_or_square_root(arr)
      new_arr = []
      arr.each do |num|
        new_arr << if (Math.sqrt(num) % 1).zero?
                     Math.sqrt(num).to_i
                   else
                     (num * num)
                   end
      end
      new_arr
    end

    # Count of positives / sum of negatives
    def self.count_positives_sum_negatives(lst)
      if [[], nil].include?(lst)
        []
      else
        [lst.count(&:positive?), lst.select(&:negative?).reduce(0, :+)]
      end
    end

    # Convert a String to a Number
    def self.string_to_number(s)
      s.to_i
    end

    # Willson primes
    def self.am_I_Wilson(p)
      if (p == 5) || (p == 13) || (p == 563)
        true
      else
        false
      end
    end

    # Formatting decimal places
    def self.two_decimal_places(n)
      n.round(2)
    end

    # Find numbers which are divisible by given number
    def self.divisible_by(numbers, divisor)
      arr = []
      numbers.each do |i|
        is_div = i % divisor
        arr << i if is_div.zero?
      end
      arr
    end
  end
end