class FivImpl<Fiv

    def self.is_prime(n)
        (2..Math.sqrt(n).round).each { |i| return false if n % i == 0 }
        true
    end
    def self.gap(g, m, n)
        (m..n).each do |i|
            next unless self.is_prime(i)
            return [i, i+g] if is_prime(i+g) && (i+1..i+g-1).none? { |num| is_prime num }
        end
        return  nil
    end

    def self.zeros(n)
        return -1 if n < 0
        count = 0
        while n >= 5
            n /= 5
            count += n
        end
        return count
    end

    def self.perimeter(n)
        number = [0,1]
        for i in (2...n+2)
            number.append( number[i-1] + number[i-2] )        
        end
        return number.sum * 4
    end

    def self.solve(m)
        return (2 * m + 1 - Math.sqrt(4*m+1)) / (2 * m)
    end

    def self.smallest(n)
        result = [n]
        size = n.to_s.size
        size.times do |i1|
        size.times do |i2|
            digits = n.to_s
            x = digits.slice!(i1)
            digits.insert(i2, x)
            result = [digits.to_i, i1, i2] if digits.to_i < result.first
        end
        end
        return result
    end
end