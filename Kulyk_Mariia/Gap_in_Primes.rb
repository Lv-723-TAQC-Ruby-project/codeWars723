# starting at m if odd or m+1 if even, iterate up and check for primality.
# If number is prime, check if i+g is prime as well.
# If there's no intermediate primes, return result
def gap(g, m, n)
  m = m+1 if m % 2 == 0
  (m..n).each do |i|
    next unless is_prime(i)
    return [i, i+g] if is_prime(i+g) && (i+1..i+g-1).none? { |num| is_prime num }
  end
  nil
end

def is_prime(n)
  (2..Math.sqrt(n).round).each { |i| return false if n % i == 0 }
  true
end
