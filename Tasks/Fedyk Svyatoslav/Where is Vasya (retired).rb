def where_is_he(p, bef, aft)
    return  p - [bef + 1, p - aft].max + 1
end