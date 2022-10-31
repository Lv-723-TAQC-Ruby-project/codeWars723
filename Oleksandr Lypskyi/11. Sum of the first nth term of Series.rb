def series_sum(n)
    value = 0
    number = 1.0
    n.times {
        value += 1/number
        number += 3
    }
    sprintf('%.2f', value).to_s
end