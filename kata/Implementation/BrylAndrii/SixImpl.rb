# frozen_string_literal: true

require './kata/Six'

module BrylAndriiSixImpl
  class SixImpl < Six
    # Build a pile of Cubes
    def self.find_nb(m)
      output = 1
      check = 0
      while check <= m
        check += output ** 3
        if check == m
          return output
        end
        output += 1
      end
      -1
    end

    # Easy Balance Checking
    def self.balance(b)
      clean = b.gsub(/[^0-9a-z \n.]+/i, '') # remove all non-alphanumeric characters
      num = clean.gsub(/[^0-9 \n.]+/i, '') # remove all non-numeric characters
      num_clean = num.gsub(/^[^\d.]+/i, '') # remove all spaces at start of line
      price = num_clean.gsub(/^[\d+.\n]+/i, '') # remove all non-float characters
      int = price.gsub(/ /i, '') # remove all spaces
      arr = int.split(" ") # split into array
      temp = arr
      temp.map! { |n| sprintf('%.2f', n.to_f) }
      arr.to_a # convert to array
      arr.map!(&:to_f) # convert to float
      arr.map! { |n| sprintf('%.2f', n.to_f) } # format array to 2 decimal places
      clean = clean.gsub(/^$\n/i, '') #remove blank lines
      clean = clean.gsub(/            \n/i, '')
      clean = clean.gsub(/            /i, '')
      clean = clean.sub(/^.*\n/, '')
      clean = clean.gsub(/ [^ ]*$/, ' &')
      temp.each do |x|
        clean = clean.sub("&", x)
      end
      clean = clean + "\n" unless clean[-1] == "\n" # if clean does not end with \n, add \n to the end
      balance = num[0..7].to_f # get balance
      mid_b = []
      mid_b << balance.to_f # add balance to array
      arr.each do |x|
        # for each element in arr
        mid_b << (mid_b[-1] - x.to_f).round(2) # subtract last element of mid_b from x and add result to mid_b
      end
      b = []
      mid_b.each { |a| b << sprintf("%.2f", a) } # format each element of mid_b to 2 decimal places
      sum = 0
      arr.each { |a| sum += a.to_f } # sum all elements of arr
      avg = sum / arr.length # calculate average
      ready = clean.gsub(/\n/i, ' Balance &\r\n') #add Balance & to each line
      final = '&\r\n' + ready
      b.each do |x|
        # for each element in b
        final = final.sub("&", x) # replace & with element of b
      end
      out = "Original Balance: " + final + 'Total expense  ' + sprintf("%.2f", sum) + '\r\n' + 'Average expense  ' + sprintf("%.2f", avg)
      out.to_s
      out.gsub(/\\r\\n/i, "\r\n") # replace \r\n with actual line break
    end

    # Floating-point Approximation (I)
    def self.f(x)
      x / (1 + Math.sqrt(1 + x))
    end

    # Rainfall
    def self.mean(town, data)
      town = data.split("\n").select { |x| x if x.split(':').first == town }[0]
      return -1 if town.nil?
      arr = town.gsub(/[^\d,^.]+/, '')
                .split(',')
      return -1 if arr.size.zero?
      arr.map(&:to_f).inject { |sum, el| sum + el }.to_f / arr.size
    end

    def self.variance(town, strng)
      average = mean(town, strng)
      town = strng.split("\n").select { |x| x.split(':').first == town }[0]
      return -1 if town.nil?
      arr = town.gsub(/[^\d,^.]+/, '')
                .split(',')
                .map { |x| (x.to_f - average) ** 2 }
      arr.inject { |sum, el| sum + el }.to_f / arr.size
    end

    # Ranking NBA teams
    def self.nba_cup(result_sheet, to_find)
      return '' if to_find == ''
      return format("%s:This team didn't play!", to_find) unless result_sheet.match(/#{to_find}\s/)

      wins = 0
      draws = 0
      losses = 0
      scored = 0
      conceded = 0
      points = 0

      result = result_sheet.split(',')
      result.each do |x|
        next unless x.include? to_find

        data = "#{x} ".scan(/[A-z 76]*. \d* /)
        data = data.reverse unless data[0].include? to_find

        return "Error(float number):#{x}" if data.length != 2

        first = data[0].scan(/ \d* /)[0].to_i
        second = data[1].scan(/ \d* /)[0].to_i

        scored += first
        conceded += second
        wins += 1 if first > second
        losses += 1 if first < second
        draws += 1 if first == second
        points = wins * 3 + draws
      end
      format('%s:W=%d;D=%d;L=%d;Scored=%d;Conceded=%d;Points=%d', to_find, wins, draws, losses, scored, conceded, points)
    end

    # Help the bookseller!
    def self.stockList(listOfArt, listOfCat)
      return '' if listOfArt.empty? || listOfCat.empty?
      result = []
      listOfCat.each do |cat|
        sum = 0
        listOfArt.each do |art|
          sum += art.split(' ')[1].to_i if art[0] == cat
        end
        result << "(#{cat} : #{sum})"
      end
      result.join(' - ')
    end

    # Artificial Rain (retired)
    def self.artificial_rain(garden)
      max = 0
      min = 0
      cur_size = 1
      (1...garden.length).each do |i|
        cur_high = garden[i]
        if cur_high < garden[i - 1]
          min = i
        elsif cur_high > garden[i - 1]
          max = [max, cur_size].max
          cur_size = i - min
        end
        cur_size += 1
      end
      [max, cur_size].max
    end
  end
end
