def smallest(n)
  n_arr = n.to_s.split("").map{|num| num.to_i}

  if n_arr.each_index.select{|i| n_arr[i]==n_arr.min}.length == 1
    n_arr2 = n_arr.dup
    n_arr2.delete_at(0)
    ind = n_arr2.each_index.select{|i| n_arr2[i]==n_arr2.min}.max + 1
  else
    ind = n_arr.each_index.select{|i| n_arr[i]==n_arr.min}.max
  end
  lowest = n_arr[ind]
  end 