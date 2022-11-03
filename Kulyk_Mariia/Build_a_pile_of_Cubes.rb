puts "Enter the total volume m of the building: "

def find_nb(m)
  n = 1
  sum = 1
  while sum.to_f < m.to_f
    n += 1
    sum += n**3
  end
  return sum == m ? n : -1
end

#puts find_nb(gets)