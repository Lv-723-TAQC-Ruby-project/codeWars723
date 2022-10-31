def am_I_Wilson(p)    
   (2..Math.sqrt(p).floor).each do |m|
    if p % m == 0
      return false
    end
  end
  true
end