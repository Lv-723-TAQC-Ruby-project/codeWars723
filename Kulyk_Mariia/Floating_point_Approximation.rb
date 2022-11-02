puts "Enter x: "

def f(x)
  return x.to_f / (1 + Math.sqrt(1 + x.to_f))
end

# puts f(gets)