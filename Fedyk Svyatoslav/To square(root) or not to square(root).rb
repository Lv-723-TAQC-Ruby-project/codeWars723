def square_or_square_root(arr)
    return arr.map do |num|
      if Math.sqrt(num) % 1 == 0
        Integer.sqrt(num)
      else
        num ** 2
      end
    end   
end