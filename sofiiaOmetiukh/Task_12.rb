#Where is Vasia?


def where_is_he(p, bef, aft)
  p - [bef + 1, p - aft].max + 1
end

