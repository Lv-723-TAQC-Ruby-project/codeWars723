
def smallest(n)
  smallest = [n]

  n.to_s.length.times do |i|
    n.to_s.length.times do |j|
      num_str = n.to_s
      d = num_str.slice!(i)
      num_str.insert(j, d)
      smallest = [num_str.to_i, i, j] if num_str.to_i < smallest.first
    end
  end
  smallest
end
