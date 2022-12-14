# frozen_string_literal: true

require './kata/Six'

module StanislavKovalovSixImpl
  class SixImpl < Six
    def self.find_nb(m)
      n = 1
      sum = 1
      while sum.to_f < m.to_f
        n += 1
        sum += n ** 3
      end
      sum == m ? n : -1
    end

    def self.balance(b)
      b = b.gsub(/[^a-z0-9\s.]/i, '').gsub(/(\n)(\n*)/, '\1').gsub(/(\d+\.\d+)$/) do
        format('%.2f', ::Regexp.last_match(1))
      end
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

    def self.mean(town, str)
      temp(town, str).sum / temp(town, str).size
    rescue StandardError
    end

    def self.variance(town, str)
      temp(town, str).map { |t| (t - mean(town, str)) ** 2 }.sum / temp(town, str).size
    rescue StandardError
    end

    def self.temp(town, str)
      str.split("\n").map { |s| s.split(':') }.to_h[town].split.map(&:to_f).drop(1)
    end

    def self.nba_cup(result_sheet, to_find)
      return '' if to_find.empty?

      stats = %i[W D L Scored Conceded Points].product([0]).to_h
      result_sheet.split(',').grep(Regexp.new(to_find)).map do |result|
        return "Error(float number):#{result}" if /\d\.\d/.match?(result)

        result_array = result.split(/\s*(\b\d+\b)\s*/)
        result_array.rotate!(2) unless to_find == result_array.first
        next unless to_find == result_array.first

        score_1, score_2 = result_array.values_at(1, 3).map(&:to_i)
        stats[:Scored] += score_1
        stats[:Conceded] += score_2

        case score_1 <=> score_2
        when 1
          stats[:W] += 1
          stats[:Points] += 3
        when -1
          stats[:L] += 1
        end
      end
      return "#{to_find}:This team didn't play!" if stats[:Scored].zero?

      [to_find, stats.map { |k, v| "#{k}=#{v}" }.join(';')].join(':')
    end

    def self.stockList(listOfArt, listOfCat)
      if listOfArt.empty?
        ''
      else
        listOfCat.map do |c|
          "(#{c} : #{listOfArt.select do |b|
            b.start_with?(c)
          end.map { |b| b[/\d+$/].to_i }.sum})"
        end.join(' - ')
      end
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
