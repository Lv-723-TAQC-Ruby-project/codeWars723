class SixImpl<Six
    def self.find_nb(m)
        n = 1
        check = 0
        while check <= m
            check += n ** 3
            return n if check == m 
            n += 1
        end
        return -1
    end

    def self.balance(b)
        sym = "&@,;$#€!=:;-_+^/(){}?*'%"
        new_b = b.dup
        
        #clean text
        new_b.gsub!(/[^0-9A-Za-z.\r\n]/, ' ')
        arr = new_b.split("\n")
        arr = arr.reject { |elem| elem.empty? }
        
        full_balance = arr[0].to_f
        balance = arr[0].to_f
        
        arr[0] = "Original Balance: %0.2f" % [arr[0].to_f]
        
        for k in 1..(arr.length()-1)
           n = arr[k].split(" ")
           balance -= n[2].to_f 
           arr[k] = "%s %s %0.2f Balance %0.2f" % [n[0],n[1],n[2].to_f,balance]
        end
      
        arr.append("Total expense  %0.2f" % [full_balance-balance])
        arr.append("Average expense  %0.2f" % [(full_balance-balance)/(arr.length()-2)])  
        
        #concate all strings
        new_b = arr.join("\r\n")
        
        return new_b
    end

    def self.f(x)
        return x / (1 + Math.sqrt(1 + x))
    end

    def self.split_num(town,strng)
        towns = ["Rome", "London", "Paris", "NY", "Vancouver", "Sydney", "Bangkok", "Tokyo",
                "Beijing", "Lima", "Montevideo", "Caracas", "Madrid", "Berlin"]
        return [] if !strng.include? town
        return [] if !towns.include? town
        
        strArr = strng.split("\n")
        num_arr = []
        
        for str in strArr
          if str.include? town
            num_arr = str.split(",")
            num_arr.map{ |num| num.gsub!(/[^0-9.]/, '') }
            puts str
          end
        end
        return num_arr
    end
    def self.mean(town, strng)
        num_arr = self.split_num(town,strng)
        return -1 if num_arr.size == 0
        return num_arr.map(&:to_f).sum/num_arr.size
    end
    def self.variance(town, strng)
        num_arr = self.split_num(town,strng)
        return -1 if num_arr.size == 0
        mean = num_arr.map(&:to_f).sum/num_arr.size
        sum = num_arr.sum(0.0) { |element| (element.to_f - mean) ** 2 }
        return sum / num_arr.size
    end

    def self.nba_cup(result_sheet, to_find)
        return "" if to_find == ""
        return "%s:This team didn't play!" % [to_find] if !result_sheet.match /#{to_find}\s/
    
        matchs_res = result_sheet.split(",")
        
        win,lose,draw,scored,conceded = 0,0,0,0,0
        
        for match in matchs_res
        if match.include? to_find
            
            puts match
            data = (match + " ").scan(/[A-z 76]*. \d* /)
            puts data
            data = data.reverse() if !data[0].include? to_find
            
            return "Error(float number):#{match}" if data.length() != 2
            
            scoreFirst = data[0].scan(/ \d* /)[0].to_i
            scoreSecond = data[1].scan(/ \d* /)[0].to_i
            
            scored += scoreFirst
            conceded += scoreSecond
            win += 1 if scoreFirst > scoreSecond 
            lose += 1 if scoreFirst < scoreSecond
            draw += 1 if scoreFirst == scoreSecond
            
        end
        end
    
        return "%s:W=%d;D=%d;L=%d;Scored=%d;Conceded=%d;Points=%d" %
        [to_find,win,draw,lose,scored,conceded,(win*3+draw)]
    end
    
    def self.stockList(listOfArt, listOfCat)
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

    def self.artificial_rain(garden)
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

end