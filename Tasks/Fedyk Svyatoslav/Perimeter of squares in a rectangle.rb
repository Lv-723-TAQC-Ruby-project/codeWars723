def perimeter(n)
    number = [0,1]
    for i in (2...n+2)
        number.append( number[i-1] + number[i-2] )        
    end
    return number.sum * 4
end