require './kata/Eight'

class EightImpl < Eight

  def self.litres(time)
    litres = time / 2
    litres.floor
  end

  def self.get_volume_of_cuboid(length, width, height)
    length * width * height
  end

  def self.converter(mpg)
    kpl = mpg * 0.3540060435382138
    kpl.round(2)
  end

  def self.square_or_square_root(arr)
    new_arr = []
    arr.each do |num|
      if (Math.sqrt(num) % 1) == 0
        new_arr << Math.sqrt(num).to_i
      else
        new_arr << (num * num)
      end
    end
    return new_arr
  end

  def self.count_positives_sum_negatives(lst)
    if lst == []
      return []
    else
      [lst.count { |n| n > 0 }, lst.select { |n| n < 0 }.reduce(0, :+)]
    end
  end

  def self.string_to_number(s)
    s.to_i
  end

  def self.am_I_Wilson(p)
    if p == 5 or p == 13 or p == 563
      return true
    else
      return false
    end
  end

  def self.two_decimal_places(n)
    n.round(2)
  end

  def self.divisible_by(numbers, divisor)
    arr = []
    numbers.each do |i|
      is_div = i % divisor
      if is_div == 0
        arr << i
      else
      end
    end
    return arr
  end
end
