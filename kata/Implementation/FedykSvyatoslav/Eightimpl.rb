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
    cof = 1.609344 / 4.54609188
    (mpg * cof).round(2)
  end

  def self.square_or_square_root(arr)
    arr.map do |num|
      if (Math.sqrt(num) % 1).zero?
        Integer.sqrt(num)
      else
        num**2
      end
    end
  end

  def self.count_positives_sum_negatives(lst)
    return [] if lst.empty?

    lst.inject([0, 0]) do |(count, sum), num|
      if num.positive?
        [count + 1, sum]
      else
        [count, sum + num]
      end
    end
  end

  def self.string_to_number(s)
    s.to_i
    # return Integer(s)
  end

  def self.am_I_Wilson(p)
    return false if p >= 564

    (((1..p - 1).inject(1) { |fact, num| fact * num } + 1) % p**2).zero?
  end

  def self.two_decimal_places(n)
    # return n.round(2)
    ('%.2f' % n).to_f
  end

  def self.divisible_by(numbers, divisor)
    numbers.select { |num| (num % divisor).zero? }
  end
end
