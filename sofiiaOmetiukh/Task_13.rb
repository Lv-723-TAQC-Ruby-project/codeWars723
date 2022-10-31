#Build a pile of Cubes

puts "Enter the Integer number"
m = gets.to_i
def find_nb(m)
  total = 1
  n = 1
  while total < m
    n += 1
    total += n ** 3
  end
  total == m ? n : -1
end

puts find_nb(m)