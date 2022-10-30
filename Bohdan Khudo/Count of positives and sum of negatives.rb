def count_positives_sum_negatives(lst)
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
  return result
end

puts count_positives_sum_negatives([])