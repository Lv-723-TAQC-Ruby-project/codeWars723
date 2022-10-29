puts "Enter list of numbers: "

def square_or_square_root(arr)
  arr.map do |n|
    sqrt = Math.sqrt(n)
    sqrt % 1 == 0 ? sqrt : n**2
  end
end

puts square_or_square_root(gets.to_f.split)
