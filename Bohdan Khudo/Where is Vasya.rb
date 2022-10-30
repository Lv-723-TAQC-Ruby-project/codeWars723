def where_is_he(p, bef, aft)
  vasya = bef + 1
  while p - vasya > aft
    vasya += 1
  end
  return p - vasya + 1
end

puts where_is_he(9, 4, 3)