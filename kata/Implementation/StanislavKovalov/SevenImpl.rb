class SevenImpl <Seven
  def self.new_avg (arr, newavg)
    d = newavg * (arr.size + 1) - arr.sum
    d > 0 ? d.ceil : raise
  end

  def self.series_sum(n)
    sum = 0
    for i in 1..n
      y = (i - 1) * 3 + 1
      sum += 1.0 / y
    end
    p "%.2f" % sum
  end

  def self.where_is_he(p, bef, aft)
    p - [bef + 1, p - aft].max + 1
  end
end