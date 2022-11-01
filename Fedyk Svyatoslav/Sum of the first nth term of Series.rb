def series_sum(n)
    return '%.2f' % (0...n).inject(0){ |sum, i| sum + 1.0/(1+i*3) }
end