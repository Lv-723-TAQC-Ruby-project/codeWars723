
def nba_cup(result_sheet,name_team)
  table = {} #initialize the hash table to store the statistics of each team
  games = result_sheet.split(',') #we break down the list of games for each individual game
  games.each do |game|
    if game.include?('.') #checking for a floating number
      return "Error(float number):#{game}"
    end
    next unless game.include?(name_team)
    #check if the name of our team appears in the name of the game, if so, we pass the variables of the game and the names of the team to the method for splitting by elements.

    divide_to_elements(game, name_team, table)
  end
  return "" if name_team.empty? #check the input data, in particular, if the command name is empty
  return "#{name_team}:This team didn't play!"  if (!table[name_team])&&(!name_team.empty?) #the name is misspelled
  #If these checks are passed successfully, the final result will be displayed to us.
  if table[name_team]
    "#{name_team}:\
W=#{table[name_team][:W]};\
D=#{table[name_team][:D]};\
L=#{table[name_team][:L]};\
Scored=#{table[name_team][:Scored]};\
Conceded=#{table[name_team][:Conceded]};\
Points=#{table[name_team][:Points]}"
  end
end

def divide_to_elements(game, name_team, table)
  divide = game.split(' ').reject {|el| el.count('a-zA-Z') != 0} #First using split, reject and regular expressions in our count, we will get the required scores
  score1=divide[0].to_i
  score2=divide[1].to_i
  team1 = game.split(" #{score1}").first #having the scores, we will get the team names, deleting prefix, suffix and splitting according to the scores we need
  team2 = game.split(" #{score1}").last.delete_prefix(' ').delete_suffix(" #{score2}")
  initialize_of_team(table, team1)
  initialize_of_team(table, team2)
  combine_the_stats(score1,score2, table, team1, team2)
end
#check is made to see if the team name needs to be initialized,
#if the team name already exists in the table, we move on to the next method
def initialize_of_team(table, name_team)
  table[name_team] = { W: 0, D: 0, L: 0, Scored: 0, Conceded: 0, Points: 0 } unless table[name_team]
end
#will calculate statistics for us depending on the match result.
def combine_the_stats(score1,score2, table, team1, team2)
  if score1 > score2
    table[team1][:W] += 1
    table[team1][:Scored] += score1
    table[team1][:Conceded] += score2
    table[team1][:Points] += 3
    table[team2][:L] += 1
    table[team2][:Scored] += score2
    table[team2][:Conceded] += score1
  else
    table[team2][:W] += 1
    table[team2][:Scored] += score2
    table[team2][:Conceded] += score1
    table[team2][:Points] += 3
    table[team1][:L] += 1
    table[team1][:Scored] += score1
    table[team1][:Conceded] += score2
  end
end

=begin
def nba_cup(r,t)
  return "" if t.empty?
  tr = r.tr(",", "\n").scan(/^.*#{t}\s.*$/)
  return "#{t}:This team didn't play!" if tr.empty?
  return "Error(float number):#{tr.join}" if tr.join.match(/\d+\.\d+/)
  tr.map! {|g| g.scan(/^.+\s\d+(?=\s)|\w.+\s\d+$/)}.map! {|a,b| a.match(/#{t}/) ? [a,b] : [b,a]}
  h = {"W"=>0, "D"=>0, "L"=>0, "S"=>0, "C"=>0}
  tr.each do |a,b|
    as = a[/\d+$/].to_i
    bs = b[/\d+$/].to_i
    h["W"] += 1 if as > bs
    h["D"] += 1 if as == bs
    h["L"] += 1 if as < bs
    h["S"] += as
    h["C"] += bs
  end
  "#{t}:W=#{h["W"]};D=#{h["D"]};L=#{h["L"]};Scored=#{h["S"]};Conceded=#{h["C"]};Points=#{h["W"] * 3 + h["D"]}"
end
=end