#Formatting decimal places #0

puts "Enter the number: "
n = gets.to_f
def two_decimal_places(n)
   n.round(2)
end

puts two_decimal_places(n)