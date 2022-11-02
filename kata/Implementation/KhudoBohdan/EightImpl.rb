require "./kata/Eight.rb"

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
    format("%.2f", kpl).to_f
  end

  def self.square_or_square_root(arr)
    result = []
    for a in arr
      sqrt = Math.sqrt(a).to_i
      if sqrt * sqrt == a
        result.append(sqrt)
      else
        result.append(a * a)
      end
    end
    return result
  end

  def self.count_positives_sum_negatives(lst)
    if lst == []
      return lst
    end
    result = [0, 0]
    for a in lst
      if a > 0
        result[0] += 1
      elsif a < 0
        result[1] += a
      end
    end
    return result
  end

  def self.string_to_number(s)
    s.to_i
  end

  def self.am_I_Wilson(p)
    if p == 5 || p == 13 || p == 563
      return true
    else
      return false
    end
  end

  def self.two_decimal_places(n)
    n.round(2)
  end

  def self.divisible_by(numbers, divisor)
    result = []
    for n in numbers
      if n % divisor == 0
        result.append(n)
      end
    end
    return result
  end

end
