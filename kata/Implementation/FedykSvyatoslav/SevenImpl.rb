class SevenImpl<Seven

    def self.new_avg(arr, newavg)
        donations = (newavg * (arr.size + 1) - arr.sum).ceil
        raise "Negative donations!" if  donations < 0
        return donations
    end

    def self.series_sum(n)
        return '%.2f' % (0...n).inject(0){ |sum, i| sum + 1.0/(1+i*3) }
    end

    def self.where_is_he(p, bef, aft)
        return  p - [bef + 1, p - aft].max + 1
    end
    
end