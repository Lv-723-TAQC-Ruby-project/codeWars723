# Miles per gallon to kilometers per liter
# 1 Imperial Gallon = 4.54609188 litres
# 1 Mile = 1.609344 kilometres
puts "Enter the volume of imperial gallon: "
def converter(mpg)
   (mpg*0.354006).round(2)
end

puts converter(gets.to_f)