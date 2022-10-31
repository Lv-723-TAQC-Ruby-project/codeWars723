def stockList(listOfArt, listOfCat)
  
    #Creating dict/hash
    list = Hash.new()
    listOfCat.each{|cat| list[cat] = 0}
    
    #Finding books
    for art in listOfArt
      for cat in listOfCat
         if art[0] == cat
           temp = 0
           data = art.split(" ")
           temp = list[cat].to_i + data[1].to_i
           list[cat] = temp
         end 
      end
    end
    
    #Exception if L or M are empty
    return "" if list.values.all? { |value| value == 0 }
    
    #Creating string 
    strList = []
    list.each {|key, value| strList.append("(#{key} : #{value})") }
    return strList.join(' - ')
    
end