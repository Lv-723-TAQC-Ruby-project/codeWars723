def litres(time, litres = 0.5)
    return (time * litres).floor
end

puts "Input time:"
input = gets.chomp
puts "Input expected result:"
expected = gets.chomp
puts "Expected result: #{expected.to_i} Instead result: #{litres(input.to_i)}" 