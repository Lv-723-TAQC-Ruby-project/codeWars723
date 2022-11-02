#Count of positives / sum of negatives

def count_positives_sum_negatives(lst)
  if lst == []
    return lst
  end
  [lst.count{|n| n > 0}, lst.select{|n| n < 0}.reduce(0, :+)]
end

puts count_positives_sum_negatives(gets)