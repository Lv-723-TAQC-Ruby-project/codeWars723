def smallest(n)
  min = n
  f = t = i = j = 0

  while i <= n.to_s.size
    while j <= n.to_s.size
      arr = n.to_s.chars
      char = arr[i]
      arr.delete_at(i)
      arr.insert(j, char)
      number = arr.join('').to_i
      if number < min
        min = number
        f = i
        t = j
      end

      j += 1
    end
    j = 0
    i += 1
  end

  [min, f, t]
end


puts smallest(269045)