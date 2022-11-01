def square_or_square_root(arr)
  arr.map! { |n| 
  s = Math.sqrt(n)
  (s - s.floor).zero? ? s.to_i : n**2
  }
  end


