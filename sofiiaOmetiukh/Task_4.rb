#To square(root) or not to square(root)

puts "Enter the numbers in one line using the gaps: "
def square_or_square_root(arr)
  arr.map do |t|
    if Math.sqrt(t) % 1 == 0
      Integer.sqrt(t)
    else
      (t * t)
    end
  end
end

puts square_or_square_root(gets)