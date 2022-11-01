def count_positives_sum_negatives(lst)
    return [] if lst.empty?
    
    return lst.inject([0, 0]) do |(count, sum), num|
      if num > 0
        [count + 1, sum]
      else
        [count, sum + num]
      end
    end
    
end