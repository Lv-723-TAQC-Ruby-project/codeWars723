class Eightimpl < Eight

  def littres(time)
    (time/2).floor
  end

  def get_volume_of_cuboid(length, width, height)
    length * width * height
  end

 def converter(mpg)
  output = (mpg * 1.609344/4.54609188).round(2)
  output
 end

 def square_or_square_root(arr)
  arr.map! { |n|
    s = Math.sqrt(n)
    (s - s.floor).zero? ? s.to_i : n**2
  }
 end

 def count_positives_sum_negatives(lst)
  positives = []
  negatives = []
  return [] if lst == []
  lst.each do |n|
    if n > 0
      positives << n
    else
      negatives << n
    end
  end
  [positives.count, negatives.sum]
 end

 def am_i_wilson(p)
  (2..Math.sqrt(p).floor).each do |m|
    if p % m == 0
      return false
    end
   end
  true
 end

 def two_decimal_places(n)
  n.round(2)
 end

 def divisible_by(numbers, divisor)
  new = []
  numbers.each do |i|
    if i % divisor == 0
      new << i
    end
  end
  return new
 end
end
