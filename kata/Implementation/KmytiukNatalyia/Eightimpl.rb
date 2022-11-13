# frozen_string_literal: true

require './kata/Eight'

module KmytiukNatalyiaEightImpl
class Eightimpl < Eight
  def littres(time)
    (time / 2).floor
  end

  def get_volume_of_cuboid(length, width, height)
    length * width * height
  end

  def converter(mpg)
    (mpg * 1.609344 / 4.54609188).round(2)
  end

  def square_or_square_root(arr)
    arr.map! do |n|
      s = Math.sqrt(n)
      (s - s.floor).zero? ? s.to_i : n**2
    end
  end

  def count_positives_sum_negatives(lst)
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

  def am_i_wilson(p)
    (2..Math.sqrt(p).floor).each do |m|
      return false if (p % m).zero?
    end
    true
  end

  def two_decimal_places(n)
    n.round(2)
  end

  def divisible_by(numbers, divisor)
    new = []
    numbers.each do |i|
      new << i if (i % divisor).zero?
    end
    new
  end
end
end
