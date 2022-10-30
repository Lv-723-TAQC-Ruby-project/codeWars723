def count_positives_sum_negatives(sum)
    if sum == []
      return sum
    end
    count = [0, 0]
    for i in sum
      if i > 0
        count[0] += 1
      else i < 0
        count[1] += i
        end
    end
    return count
  end