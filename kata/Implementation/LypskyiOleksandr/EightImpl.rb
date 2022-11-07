# frozen_string_literal: true

require './kata/Eight'

class EightImpl < Eight

  # 1. Keep Hydrated!
  def self.litres(time)
    (time * 0.5).floor
  end

  # 2. Volume
  def self.get_volume_of_cuboid(length, width, height)
    length * width * height
  end

  # 3. Miles per gallon to kilometers per liter
  def self.converter(mpg)
    (mpg * 1.609344 / 4.54609188).round(2)
  end

  # 4. To square root or no to square
  def self.square_or_square_root(arr)
    square_or_square_root_list = []
    arr.each do |i|
    i_sqrt = Math.sqrt(i)
    i_sqrt == i_sqrt.floor ? square_or_square_root_list.append(i_sqrt.floor) : square_or_square_root_list.append(i * i)
    end
    square_or_square_root_list
  end

  # 5. Count of positives / sum of negatives
  def self.count_positives_sum_negatives(lst)
    return [] if lst == [] || lst.nil?

    positive_numbers = 0
    negative_numbers_sum = 0

    lst.each do |i|
      i.positive? ? positive_numbers += 1 : negative_numbers_sum += i
    end

    [positive_numbers, negative_numbers_sum]
  end

  # 6. Convert a String to a Number
  def self.string_to_number(s)
    s.to_i
  end

  # 7. Willson primes
  def self.am_I_Wilson(p)
    [5, 13, 563].include? p
  end

  # 8. Formatting decimal places
  def self.two_decimal_places(n)
    n.round(2)
  end

  # 9. Find numbers which are divisible by given number
  def self.divisible_by(numbers, divisor)
    numbers.select { |number| (number % divisor).zero? ? number : nil }
  end
end
