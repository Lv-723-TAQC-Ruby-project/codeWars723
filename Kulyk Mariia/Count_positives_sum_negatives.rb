puts "Enter an array of int numbers: "

def count_positives_sum_negatives(lst)
  if lst == 0
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

end
puts count_positives_sum_negatives(gets)
