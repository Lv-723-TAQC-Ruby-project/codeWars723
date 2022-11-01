def find_nb(m)
    n = 1
    check = 0
    while check <= m
        check += n ** 3
        return n if check == m 
        n += 1
    end
    return -1
end