class SevenImpl < Seven

  # 10. Looking for a benefactor
  def self.new_avg(arr, newavg)
    result = newavg * (arr.count + 1) - arr.sum
    if result <= 0
      raise ArgumentError
    end
    return result.ceil
  end
  # 11. Sum of the first nth term of Series
  def self.series_sum(n)
    x = 1
    sum = 0
    i = 0

    while i < n
      sum += 1.0/x
      x +=3
      i += 1
    end

    return  format("%.2f", sum)
  end

  # 12. Where is Vasya?
  def self.where_is_he(p, bef, aft)
    vasya = bef + 1
    while p - vasya > aft
      vasya += 1
    end
    return p - vasya + 1
  end

end