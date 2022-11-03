puts "Enter number: "

def series_sum(n)
  return "0.00" if n == 0
  value = 0.0
  start = 1.0

  n.times do
    value += (1.0/start)
    start = 3.0
  end
  "%.2f" % value
end

#puts "Result = #{series_sum(gets)}"