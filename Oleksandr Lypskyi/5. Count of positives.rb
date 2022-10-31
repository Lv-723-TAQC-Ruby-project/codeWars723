def count_positives_sum_negatives(lst)
    if lst == [] || lst.nil?
        return []
    end
    positive_numbers = 0
    negative_numbers_sum = 0
  
    for i in lst
      i > 0 ? positive_numbers+=1 : negative_numbers_sum+=i 
    end 
   
   [positive_numbers, negative_numbers_sum]
 end