# frozen_string_literal: true

require './kata/Six'

module OmetiukhSofiiaSixImpl
  class SixImpl < Six
    def self.find_nb(m)
      total = 1
      n = 1
      while total < m
        n += 1
        total += n ** 3
      end
      total == m ? n : -1
    end

    def self.balance(b)
      b = b.gsub(/[^a-z0-9\s.]/i, '').gsub(/(\n)(\n*)/, '\1').gsub(/(\d+\.\d+)$/) { '%.2f' % ::Regexp.last_match(1) }
      ns = b.scan(/\d+\.\d+$/)
      ns.map!.with_index { |n, i| i.zero? ? n : '%.2f' % ns[i - 1].to_f.send('-', ns[i].to_f) }
      c = b.split("\n").map.with_index do |l, i|
        i.zero? ? "Original Balance: #{l}" : "#{l} Balance #{ns[i]}"
      end.join("\r\n")
      e = b.scan(/\d+\.\d+$/)[1..].map(&:to_f)
      "#{c}\r\nTotal expense  #{'%.2f' % e.sum}\r\nAverage expense  #{format('%.2f', (e.sum / e.size))}"
    end

    def self.f(x)
      x / (1 + Math.sqrt(1 + x))
    end

    def self.mean(town, strng)
      mine_numbers(town, strng) do |value|
        value.reduce(:+) / value.size
      end
    end

    def self.variance(town, strng)
      mine_numbers(town, strng) do |value|
        temp = mean(town, strng)
        value.map { |fall| (fall - temp) ** 2 }.reduce(:+) / value.size
      end
    end

    def self.mine_numbers(town, strng)
      no_records_answer = -1

      town_data = strng.split("\n")
      value = town_data.select { |record| record.split(':').shift == town }.join
      return no_records_answer if value.empty?

      yield value.scan(/\d+\.\d+/)
                 .map(&:to_f)
    end

    def self.nba_cup(result_sheet, to_find)
      return '' if to_find == ''
      return format("%s:This team didn't play!", to_find) unless result_sheet.match(/#{to_find}\s/)

      matchs_res = result_sheet.split(',')

      win = 0
      lose = 0
      draw = 0
      scored = 0
      conceded = 0

      matchs_res.each do |match|
        next unless match.include? to_find

        puts match
        data = "#{match} ".scan(/[A-z 76]*. \d* /)
        puts data
        data = data.reverse unless data[0].include? to_find

        return "Error(float number):#{match}" if data.length != 2

        score_first = data[0].scan(/ \d* /)[0].to_i
        score_second = data[1].scan(/ \d* /)[0].to_i

        scored += score_first
        conceded += score_second
        win += 1 if score_first > score_second
        lose += 1 if score_first < score_second
        draw += 1 if score_first == score_second
      end

      format('%s:W=%d;D=%d;L=%d;Scored=%d;Conceded=%d;Points=%d', to_find, win, draw, lose, scored, conceded,
             (win * 3 + draw))
    end

    def self.stockList(listOfArt, listOfCat)
      return '' if listOfArt.empty?

      result = []
      listOfCat.map do |cat_item|
        total = 0
        listOfArt.each do |art_item|
          total += art_item.split.last.to_i if art_item[0] == cat_item
        end
        result << "(#{cat_item} : #{total})"
      end
      result.join(' - ')
    end

    def self.artificial_rain(garden)
      max = low = 0
      cur_size = 1
      (1...garden.length).each do |i|
        cur_high = garden[i]
        if cur_high < garden[i - 1]
          low = i
        elsif cur_high > garden[i - 1]
          max = [max, cur_size].max
          cur_size = i - low
        end
        cur_size += 1
      end
      [max, cur_size].max
    end
  end
end
