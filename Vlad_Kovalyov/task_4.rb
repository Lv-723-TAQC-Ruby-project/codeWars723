def square_or_square_root(arr)
    arr.map do |i|
      sqrt = Math.sqrt(i)
      sqrt % 1 == 0 ? sqrt : i**2
    end
  end