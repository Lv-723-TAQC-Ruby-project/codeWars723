def nba_cup(result_sheet, to_find)
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