# frozen_string_literal: true

require './kata/Six'

module OmetiukhSofiiaSixImpl
  class SixImpl < Six
    def self.find_nb(m)
      total = 1
      n = 1
      while total < m
        n += 1
        total += n**3
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
