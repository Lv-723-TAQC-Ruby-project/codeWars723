def zeros(n)
    return -1 if n < 0
    count = 0
    while n >= 5
        n /= 5
        count += n
    end
    return count
end