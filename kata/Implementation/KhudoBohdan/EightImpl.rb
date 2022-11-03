# frozen_string_literal: true

require './kata/Eight'

class EightImpl < Eight
  def self.litres(time)
    (time * 0.5).to_i
  end

  def self.get_volume_of_cuboid(length, width, height)
    length * width * height
  end

  GALLON = 4.54609188
  MILE = 1.609344
  def self.converter(mpg)
    kpl = (mpg * MILE) / GALLON
    format('%.2f', kpl).to_f
  end

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

  def self.am_I_Wilson(p)
    return true if [5, 13, 563].include?(p)

    false
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
