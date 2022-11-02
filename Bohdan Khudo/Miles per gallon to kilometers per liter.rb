GALLON = 4.54609188
MILE = 1.609344

def bkh3_converter(mpg)
  kpl = (mpg * MILE) / GALLON
  format("%.2f", kpl).to_f
end

puts bkh3_converter(12)