# frozen_string_literal: true

require './kata/Six'

module KulykMariiaSixImpl
  class SixImpl < Six

    # Build a pile of Cubes
    def self.find_nb(m)
      n = 1
      sum = 1
      while sum.to_f < m.to_f
        n += 1
        sum += n ** 3
      end
      sum == m ? n : -1
    end

    # Easy balance checking
    def self.balance(b)
      lines = b.split(/\n/)
      init = balance = b.lines[0].to_f
      res = ["Original Balance: #{'%.2f' % balance}"]
      items = 0

      lines[1..].each do |ln|
        next if ln.empty?

        items += 1
        entries = ln.match(/(\d+)(.+?)\s*(\d+\.\d+)/)
        balance -= entries[3].to_f
        res << "#{entries[1]} #{entries[2].scan(/\w+/).first} #{'%.2f' % entries[3].to_f} Balance #{'%.2f' % balance}"
      end

      res << "Total expense  #{format('%.2f', (init - balance))}"
      res << "Average expense  #{'%.2f' % (init - balance).fdiv(items)}"
      res.join("\r\n")
    end

    # Rainfall
    def extract_numbers(town, data_strng)
      town_data = data_strng.split("\n")
      record = town_data.select { |line| line.split(":").shift == town }.join
      return -1 if record == ''
      yield record.scan(/\d+\.\d+/).map(&:to_f)
    end

    def mean(town, data_strng)
      extract_numbers(town, data_strng) do |record|
        record.reduce(:+)/record.size
      end
    end

    def variance(town, data_strng)
      extract_numbers(town, data_strng) do |record|
        mean = mean(town, data_strng)
        record.map { |rainfall| (rainfall - mean)**2 }.reduce(:+)/record.size
      end
    end

    # Help the booksellers
    def self.stockList(listOfArt, listOfCat)

      list = Hash.new()
      listOfCat.each { |cat| list[cat] = 0 }

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

      return "" if list.values.all? { |value| value == 0 }

      strList = []
      list.each { |key, value| strList.append("(#{key} : #{value})") }
      return strList.join(' - ')
    end

    # African rain
    def self.artificial_rain(garden)
      l = Array.new
      r = Array.new
      for i in 0..(garden.length - 1)
        l << 0
        r << 0
      end
      if garden.length == 1
        return 1
      elsif garden.length == 0
        return 0
      end
      for i in (1..(garden.length - 1))
        if garden[i - 1] <= garden[i]
          l[i] = 1 + l[i - 1]
        else
          l[i] = 0
        end
      end
      for i in (1..(garden.length - 1))
        i2 = garden.length - 1 - i
        if garden[i2 + 1] <= garden[i2]
          r[i2] = 1 + r[i2 + 1]
        else
          r[i2] = 0
        end
      end
      max = 0
      for i in (0..(garden.length - 1))
        if l[i] + r[i] + 1 > max
          max = l[i] + r[i] + 1
        end
      end
      return max
    end

    #Floating-point Approximation (I)
    def self.f(x)
      x.to_f / (1 + Math.sqrt(1 + x.to_f))
    end

    # Ranking NBA
    def self.nba_cup(result_sheet, name_team)
      table = {}
      games = result_sheet.split(',')
      games.each do |game|
        if game.include?('.')
          return "Error(float number):#{game}"
        end
        next unless game.include?(name_team)

        divide_to_elements(game, name_team, table)
      end
      return "" if name_team.empty?
      return "#{name_team}:This team didn't play!" if (!table[name_team]) && (!name_team.empty?)

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

    def self.divide_to_elements(game, name_team, table)
      divide = game.split(' ').reject { |el| el.count('a-zA-Z') != 0 }
      score1 = divide[0].to_i
      score2 = divide[1].to_i
      team1 = game.split(" #{score1}").first
      team2 = game.split(" #{score1}").last.delete_prefix(' ').delete_suffix(" #{score2}")
      initialize_of_team(table, team1)
      initialize_of_team(table, team2)
      combine_the_stats(score1, score2, table, team1, team2)
    end

    def self.initialize_of_team(table, name_team)
      table[name_team] = { W: 0, D: 0, L: 0, Scored: 0, Conceded: 0, Points: 0 } unless table[name_team]
    end

    def self.combine_the_stats(score1, score2, table, team1, team2)
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

  end
end
