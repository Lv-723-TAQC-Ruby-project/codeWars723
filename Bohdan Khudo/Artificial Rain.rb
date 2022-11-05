def artificial_rain(garden)
  sections = 0
  number_of_sections = garden.count

  left_side = Array.new(number_of_sections, 0)
  right_side = Array.new(number_of_sections, 0)

  i = 1
  while i < number_of_sections
    if garden[i] >= garden[i - 1]
      left_side[i] = left_side[i - 1] + 1
    else
      left_side[i] = 0
    end
    i += 1
  end

  i = garden.count  - 2
  while i >= 0
    if garden[i] >= garden[i + 1]
      right_side[i] = right_side[i + 1] + 1
    else
      right_side[i] = 0
    end
    i -= 1
  end

  i = 0
  while i < garden.count
    sections = sections > right_side[i] + left_side[i] ? sections : right_side[i] + left_side[i]
    i += 1
  end

  sections + 1
end

puts artificial_rain([1, 2, 1, 2, 1])