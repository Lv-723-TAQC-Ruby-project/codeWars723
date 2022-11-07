require "./kata/Eight.rb"

class EightImpl < Eight
  def self.litres(time)
    (time * 0.5).floor
  end

  def self.get_volume_of_cuboid(length, width, height)
    length * width * height
  end

  def self.converter(mpg)
    output = (mpg * 1.609344/4.54609188).round(2)
    return output
  end

  def self.square_or_square_root(arr)
    arr.map do |i|
      sqrt = Math.sqrt(i)
      sqrt % 1 == 0 ? sqrt : i**2
    end
  end

  def self.count_positives_sum_negatives(lst)
    if sum == []
      return sum
    end
    count = [0, 0]
    for i in sum
      if i > 0
        count[0] += 1
      else i < 0
      count[1] += i
      end
    end
    return count
  end

  def self.string_to_number(s)
    s.to_i
  end
  def self.am_I_Wilson(p)
    (p == 5) || (p == 13) || (p == 563)
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
