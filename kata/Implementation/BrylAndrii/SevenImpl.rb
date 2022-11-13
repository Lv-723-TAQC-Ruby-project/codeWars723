require './kata/Seven'

class SevenImpl < Seven
  def self.series_sum(n)
    sum = 0
    if n == 0
      return "0.00"
    else
      for i in 1..n
        sum += 1.0 / (1 + (3 * (i - 1)))
      end
    end
    return "%.2f" % sum.to_s
  end

  def self.where_is_he(p, bef, aft)
    [p - bef, aft + 1].min
  end
end
