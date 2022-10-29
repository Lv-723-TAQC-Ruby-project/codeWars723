puts "How long you would like cycling?"

def litres(time)
  (time * 0.5).floor
end


puts litres(gets.to_f)