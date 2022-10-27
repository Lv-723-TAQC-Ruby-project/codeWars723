def time # increase time by 1 hour until 15 hours
  time = 0
  while time < 15
    time += 1
    litres(time)
  end

end

def litres(time)
  litres = time / 2
  litres.floor
  puts "Time: #{time} hour(s), Litre(s): #{litres}"
end

