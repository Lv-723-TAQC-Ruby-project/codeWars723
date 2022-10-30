GALLON = 4.54609188
MILE = 1.609344

def converter(mpg)
  kpl = (mpg * MILE) / GALLON
  format("%.2f", kpl).to_f
end

puts converter(12)