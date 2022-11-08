# frozen_string_literal: true

require './kata/Eight'

GALLON = 4.54609188
MILE = 1.609344
module KhudoBohdanEightImpl
class EightImpl < Eight
  # 1. Keep Hydrated!
  def self.litres(time)
    (time * 0.5).to_i
  end

  # 2. Volume
  def self.get_volume_of_cuboid(length, width, height)
    length * width * height
  end

  # 3. Miles per gallon to kilometers per liter
  def self.converter(mpg)
    kpl = (mpg * MILE) / GALLON
    format('%.2f', kpl).to_f
  end

  # 4. To square root or no to square
  def self.square_or_square_root(arr)
    result = []
    arr.each do |a|
      sqrt = Math.sqrt(a).to_i
      if sqrt * sqrt == a
        result.append(sqrt)
      else
        result.append(a * a)
      end
    end
    result
  end

  # 5. Count of positives / sum of negatives
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

  # 6. Convert a String to a Number
  def self.string_to_number(str)
    str.to_i
  end

  # 7. Willson primes
  def self.am_I_Wilson(param)
    [5, 13, 563].include?(param)
  end

  # 8. Formatting decimal places
  def self.two_decimal_places(num)
    num.round(2)
  end

  # 9. Find numbers which are divisible by given number
  def self.divisible_by(numbers, divisor)
    result = []
    numbers.each do |n|
      result.append(n) if (n % divisor).zero?
    end
    result
  end
end
end