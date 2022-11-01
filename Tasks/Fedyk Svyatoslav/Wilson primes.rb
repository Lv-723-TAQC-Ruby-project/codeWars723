def am_I_Wilson(p)
    return false if p >= 564
    return ((1..p-1).inject(1) {|fact, num| fact * num } + 1 ) % p ** 2 == 0
end