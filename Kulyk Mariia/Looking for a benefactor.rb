puts "Enter already received donations and expected average: "

def new_avg(arr, newavg)
  result = (arr.length + 1) * newavg - arr.reduce(0) {|sum, n| sum + n}
  result <= 0? (raise ArgumentError) : result.ceil
end

puts new_avg(gets, gets)