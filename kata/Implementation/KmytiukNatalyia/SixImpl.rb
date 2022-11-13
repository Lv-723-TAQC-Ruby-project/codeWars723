# frozen_string_literal: true

require './kata/Six'

module KmytiukNatalyiaSixImpl
  class SixImpl < Six
    # 13. Build a pile of Cubes
    def find_nb(m)
      n = 0
      loop do
        if m.positive?
          cur_cube_vol = (n + 1) ** 3
          m -= cur_cube_vol
        elsif m.zero?
          return n
        elsif m.negative?
          return -1
        end
        n += 1
      end
    end

    # 14. Easy balance checking
    def balance(b)
      inputs = b.scan(/\d+\.\d+/).map!(&:to_f)
      balance = inputs.shift
      total = inputs.inject(:+).round(2)
      average = (total / inputs.size).round(2)

      num = "Original Balance: #{format('%.2f', balance)}\r\n"

      res = b.scan(/[a-zA-Z]|\d|\.|\s/).join('').split("\n").reject(&:empty?)
      res.shift

      res = res.each_with_index.map do |string, i|
        string = string.gsub(/\d+\.\d+/, '')
        data = format('%.2f', (balance - inputs[i])).to_s
        balance -= inputs[i]
        string + "#{'%.2f' % inputs[i]} Balance #{data}"
      end
      res << "Total expense  #{'%.2f' % total}"
      res << "Average expense  #{'%.2f' % average}"
      num + res.join("\r\n")
    end

    # 15. Floating-point Approximation (I)
    def f(x)
      x / (1 + Math.sqrt(1 + x))
    end

    # 16. Rainfall
    def mean(town, strng)
      transformed_data = value_of_month(town, strng)
      return -1 if transformed_data.empty?

      result = 0
      value_of_month(town, strng).each do |i|
        result += i
      end
      result / value_of_month(town, strng).length
    end

    def variance(town, strng)
      transformed_data = value_of_month(town, strng)
      return -1 if transformed_data.empty?

      m = mean(town, strng)
      sum = 0.0
      transformed_data.each { |v| sum += (v - m) ** 2 }
      sum / value_of_month(town, strng).length
    end

    def value_of_month(town, strng)
      month_values = []
      data_new = strng.split("\n").each_with_object({}) do |str, hsh|
        city, city_value = str.split(':')
        hsh[city] = city_value.split(',').each_with_object({}) do |s, h|
          month, value = s.split(' ')
          h[month] = value
        end
      end
      return [] if data_new[town].nil?

      data_new[town].each do |i|
        res = i[1].to_f
        month_values.push(res)
      end
      month_values
    end

    # 17. Ranking NBA
    def nba_cup(result_sheet, to_find)
      return "#{to_find}:This team didn't play!" unless result_sheet.match(/#{to_find}\s/)

      result = result_sheet.split(',')
      win = 0
      d = 0
      l = 0
      scored = 0
      conceded = 0
      points = 0
      result.each do |res|
        next unless res.include? to_find

        el = "#{res} ".scan(/[A-z 76]*. \d* /)
        el = el.reverse unless el[0].include? to_find
        return "Error(float number):#{res}" if res.include?('.')

        num1 = el[0].scan(/ \d* /)[0].to_i
        num2 = el[1].scan(/ \d* /)[0].to_i
        scored += num1
        conceded += num2
        if num1 > num2
          win += 1
        elsif num1 < num2
          l += 1
        else
          num1 == num2
          d += 1
        end
        points = win * 3 + d
      end
      "#{to_find}:W=#{win};D=#{d};L=#{l};Scored=#{scored};Conceded=#{conceded};Points=#{points}"
    end

    # 18. Help the bookseller!
    def stockList(listOfArt, listOfCat)
      return '' if listOfArt.empty?

      num = lambda { |c|
        listOfArt.select { |z| z[0] == c }.map do |z|
          z[/\d+/].to_i
        end.sum
      }
      listOfCat.map do |x|
        "(#{x} : #{num.call(x)})"
      end.join(' - ')
    end

    # 19. Artificial Rain
    def artificial_rain(garden)
      divs = 0
      num = garden.count
      left = Array.new(num, 0)
      right = Array.new(num, 0)
      i = 1
      while i < num
        left[i] = garden[i] >= garden[i - 1] ? left[i - 1] + 1 : 0
        i += 1
      end
      i = num - 2
      while i >= 0
        right[i] = garden[i] >= garden[i - 1] ? right[i + 1] + 1 : 0
        i -= 1
      end
      i = 0
      while i < num
        divs = divs > right[i] + left[i] + 1 ? divs : right[i] + left[i] + 1
        i += 1
      end
      divs
    end
  end
end