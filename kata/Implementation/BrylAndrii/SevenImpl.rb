require './kata/Seven'

module BrylAndriiSevenImpl
  class SevenImpl < Seven

    #Looking for a benefactor
    def self.new_avg(arr, newavg)
      new_avg = newavg * (arr.count + 1) - arr.sum
      if new_avg <= 0
        raise ArgumentError
      else
        new_avg.ceil
      end
    end

    #Sum of the first nth term of Series
    def self.series_sum(n)
      sum = 0
      if n == 0
        return "0.00"
      else
        (1..n).each { |i|
          sum += 1.0 / (1 + (3 * (i - 1)))
        }
      end
      return "%.2f" % sum.to_s
    end

    #Where is Vasya? (retired)
    def self.where_is_he(p, bef, aft)
      [p - bef, aft + 1].min
    end
  end
end
