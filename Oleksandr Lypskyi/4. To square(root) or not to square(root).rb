def square_or_square_root(arr)
    square_or_square_root_list = []
    for i in arr
      i_sqrt = Math.sqrt(i)
      i_sqrt == i_sqrt.floor ? square_or_square_root_list.append(i_sqrt.floor) : square_or_square_root_list.append(i*i)
    end
    square_or_square_root_list 
  end