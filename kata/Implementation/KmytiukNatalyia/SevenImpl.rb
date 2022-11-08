# frozen_string_literal: true

require './kata/Seven'

class SevenImpl < Seven
  def new_avg(arr, newavg)
    if (arr == []) then i = 0  else i = arr.inject{ |sum,x| sum + x }
    end
    res = (arr.length + 1) * newavg - i

    if (res > 0) then
      return res.ceil
    end
    raise ValueError
  end
  def series_sum(n)
    sum = 0
    if n == 0
      return "0.00"
    else
      for i in 1..n
        sum += 1.0/(1+(3*(i-1)))
      end
    end

    return "%.2f" % sum.to_s

  end
  def where_is_he(p, bef, aft)
    return p-bef
  end
end
