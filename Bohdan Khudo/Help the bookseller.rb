def stockList(l, m)
  if l == [] || m == []
    return ""
  end
  sum = []
  i =0
  while i < m.count
    sum.append(0)
    i += 1
  end

  for b in l
    books = b.split(" ").to_a
    j = 0
    while j < m.count
      if books[0][0] == m[j]
        sum[j] += books[1].to_i
      end
      j += 1
    end
  end

  result = ""
  k = 0
  while k < m.count - 1
    result += "(#{m[k]} : #{sum[k]}) - "
    k += 1
  end
  result += "(#{m[k]} : #{sum[k]})"

  return result
end

b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B"]
stockList(b, c)