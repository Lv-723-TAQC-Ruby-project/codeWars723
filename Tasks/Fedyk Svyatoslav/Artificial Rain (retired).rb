def artificial_rain(garden)
    left = 0
    longest_section = 0
    current_section = 1
    for i in 1...garden.length
      if garden[i] < garden[i - 1]
        left = i
      elsif garden[i] > garden[i-1]
        longest_section = longest_section < current_section ? current_section : longest_section
        current_section = i - left
      end
      current_section+=1
    end
    return longest_section > current_section ? longest_section : current_section
end