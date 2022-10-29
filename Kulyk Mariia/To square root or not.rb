def count_positives_sum_negatives(lst)
  if lst.to_a.empty?
    return []
  end
  pos = 0
  neg = 0
  lst.each { |i|
    if i > 0
      pos += 1
    else
      neg += i
    end
  }
  a = Array[pos, neg]
  a
end
