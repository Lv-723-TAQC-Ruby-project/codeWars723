#Gap in Primes

puts "Enter three numbers: "
l = gets.to_s.split
g = l[0].to_i
m = l[1].to_i
n = l[2].to_i

def gap(g, m, n)
  numbers = (m).upto(n-1).select { |b| b.odd? }
  pair = nil
  numbers.each do |number|
    next unless is_prime?(number)
    if is_prime?(number + g) && !(number + 1).upto(number + g - 1).any? { |b| is_prime?(b) }
      pair = [number, number + g]
      break
    end
  end
  pair
end

def is_prime?(number)
  return false if number <= 1
  (2..Math.sqrt(number)).each { |i| return false if (number % i).zero? }
end

puts gap(g, m, n)