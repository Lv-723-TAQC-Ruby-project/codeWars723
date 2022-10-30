puts "Enter miles per imperial gallon: "

def converter(mpg)
  output = (mpg * 1.609344/4.54609188).round(2)
  return output
end

puts converter(gets.to_f);

