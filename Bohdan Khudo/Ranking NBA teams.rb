def nba_cup(result_sheet, to_find)
  if to_find == ""
    return ""
  end

  unless result_sheet.match(/#{to_find}\s/)
       return "#{to_find}:This team didn't play!"
  end

  result_arr = result_sheet.split(",").to_a
  win = 0
  draws = 0
  lost = 0
  scored = 0
  conceded = 0

  for result in result_arr
    if result.include? to_find

      arr  = result.gsub(to_find, 'team').split(" ").to_a

      if arr[0] == "team"
        point1 = arr[1]
        point2 = arr[arr.count - 1]
      else
        point1 = arr[arr.count - 1]
        point2 = arr[arr.count - 3]
      end

      if point1.to_f - point1.to_i != 0 || point2.to_f - point2.to_i != 0
           return "Error(float number):#{result}"
      end

      point1 = point1.to_i
      point2 = point2.to_i
      if point1 > point2
        win += 1
      elsif point1 < point2
        lost += 1
      elsif point1 == point2
        draws += 1
      end

      scored += point1
      conceded += point2
    end
  end
  points = win * 3 + draws

  return "#{to_find}:W=#{win};D=#{draws};L=#{lost};Scored=#{scored};Conceded=#{conceded};Points=#{points}"
end

r = "Los Angeles Clippers 104.1 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112,"\
     "Los Angeles Lakers 111 Minnesota Timberwolves 112,Phoenix Suns 95 Dallas Mavericks 111,Portland Trail Blazers 112 New Orleans Pelicans 94,"\
     "Sacramento Kings 104 Los Angeles Clippers 111,Houston Rockets 85 Denver Nuggets 105,Memphis Grizzlies 76 Cleveland Cavaliers 106,"\
     "Milwaukee Bucks 97 New York Knicks 122,Oklahoma City Thunder 112 San Antonio Spurs 106,Boston Celtics 112 Philadelphia 76ers 95,"\
     "Brooklyn Nets 100 Chicago Bulls 115,Detroit Pistons 92 Utah Jazz 87,Miami Heat 104 Charlotte Hornets 94,"\
     "Toronto Raptors 106 Indiana Pacers 99,Orlando Magic 87 Washington Wizards 88,Golden State Warriors 111 New Orleans Pelicans 95,"\
     "Atlanta Hawks 94 Detroit Pistons 106,Chicago Bulls 97 Cleveland Cavaliers 95,"\
     "San Antonio Spurs 111 Houston Rockets 86,Chicago Bulls 103 Dallas Mavericks 102,Minnesota Timberwolves 112 Milwaukee Bucks 108,"\
     "New Orleans Pelicans 93 Miami Heat 90,Boston Celtics 81 Philadelphia 76ers 65,Detroit Pistons 115 Atlanta Hawks 87,"\
     "Toronto Raptors 92 Washington Wizards 82,Orlando Magic 86 Memphis Grizzlies 76,Los Angeles Clippers 115 Portland Trail Blazers 109,"\
     "Los Angeles Lakers 97 Golden State Warriors 136,Utah Jazz 98 Denver Nuggets 78,Boston Celtics 99 New York Knicks 85,"\
     "Indiana Pacers 98 Charlotte Hornets 86,Dallas Mavericks 87 Phoenix Suns 99,Atlanta Hawks 81 Memphis Grizzlies 82,"\
     "Miami Heat 110 Washington Wizards 105,Detroit Pistons 94 Charlotte Hornets 99,Orlando Magic 110 New Orleans Pelicans 107,"\
     "Los Angeles Clippers 130 Golden State Warriors 95,Utah Jazz 102 Oklahoma City Thunder 113,San Antonio Spurs 84 Phoenix Suns 104,"\
     "Chicago Bulls 103 Indiana Pacers 94,Milwaukee Bucks 106 Minnesota Timberwolves 88,Los Angeles Lakers 104 Portland Trail Blazers 102,"\
     "Houston Rockets 120 New Orleans Pelicans 100,Boston Celtics 111 Brooklyn Nets 105,Charlotte Hornets 94 Chicago Bulls 86,"\
     "Cleveland Cavaliers 103 Dallas Mavericks 97"

puts nba_cup(r, "Los Angeles Clippers")