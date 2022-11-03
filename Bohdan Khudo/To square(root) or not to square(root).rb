def bkh4_square_or_square_root(arr)
  result = []
  for a in arr
    sqrt = Math.sqrt(a).to_i
    if sqrt * sqrt == a
      result.append(sqrt)
    else
      result.append(a * a)
    end
  end
  return result
end

puts bkh4_square_or_square_root([25, 2])
