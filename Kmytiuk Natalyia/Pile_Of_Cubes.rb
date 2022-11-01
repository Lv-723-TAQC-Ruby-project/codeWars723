def find_nb(m)
    n = 0
  loop do
    if m > 0
      cur_cube_vol = (n+1) ** 3
      m -= cur_cube_vol
    elsif m == 0
      return n
    elsif m < 0
      return -1
    end
    n += 1
  end
end