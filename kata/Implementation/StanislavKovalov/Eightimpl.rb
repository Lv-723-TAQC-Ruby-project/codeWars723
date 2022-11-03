class Eightimpl<Eight

  def self.converter(mpg)
    (mpg * 1.609344/4.54609188).round(2)
  end

  def self.get_volume_of_cuboid(length, width, height)
    length* width* height
  end

  def self.square_or_square_root(arr)
    for a in 0..arr.length()-1
      rr = Math.sqrt(arr[a]).to_i
      if arr[a]==rr**2
        arr[a]= Math.sqrt(arr[a]).to_i
      else
        arr[a]=arr[a]**2
      end
    end
    arr
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
    for n in numbers
      if n % divisor == 0
        result.append(n)
      end
    end
    result
  end
end
