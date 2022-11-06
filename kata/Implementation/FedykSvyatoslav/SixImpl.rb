# frozen_string_literal: true

require './kata/Six'

class SixImpl < Six
  def self.find_nb(m)
    n = 1
    check = 0
    while check <= m
      check += n**3
      return n if check == m

      n += 1
    end
    -1
  end

  def self.balance(b)
    sym = "&@,;$#€!=:;-_+^/(){}?*'%"
    new_b = b.dup

    # clean text
    new_b.gsub!(/[^0-9A-Za-z.\r\n]/, ' ')
    arr = new_b.split("\n")
    arr = arr.reject(&:empty?)

    full_balance = arr[0].to_f
    balance = arr[0].to_f

    arr[0] = format('Original Balance: %0.2f', arr[0].to_f)

    (1..(arr.length - 1)).each do |k|
      n = arr[k].split(' ')
      balance -= n[2].to_f
      arr[k] = format('%s %s %0.2f Balance %0.2f', n[0], n[1], n[2].to_f, balance)
    end

    arr.append(format('Total expense  %0.2f', full_balance - balance))
    arr.append(format('Average expense  %0.2f', (full_balance - balance) / (arr.length - 2)))

    # concate all strings
    arr.join("\r\n")
  end

  def self.f(x)
    x / (1 + Math.sqrt(1 + x))
  end

  def self.split_num(town, strng)
    towns = %w[Rome London Paris NY Vancouver Sydney Bangkok Tokyo
               Beijing Lima Montevideo Caracas Madrid Berlin]
    return [] unless strng.include? town
    return [] unless towns.include? town

    strArr = strng.split("\n")
    num_arr = []

    strArr.each do |str|
      next unless str.include? town

      num_arr = str.split(',')
      num_arr.map { |num| num.gsub!(/[^0-9.]/, '') }
      puts str
    end
    num_arr
  end

  def self.mean(town, strng)
    num_arr = split_num(town, strng)
    return -1 if num_arr.size.zero?

    num_arr.map(&:to_f).sum / num_arr.size
  end

  def self.variance(town, strng)
    num_arr = split_num(town, strng)
    return -1 if num_arr.size.zero?

    mean = num_arr.map(&:to_f).sum / num_arr.size
    sum = num_arr.sum(0.0) { |element| (element.to_f - mean)**2 }
    sum / num_arr.size
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

      scoreFirst = data[0].scan(/ \d* /)[0].to_i
      scoreSecond = data[1].scan(/ \d* /)[0].to_i

      scored += scoreFirst
      conceded += scoreSecond
      win += 1 if scoreFirst > scoreSecond
      lose += 1 if scoreFirst < scoreSecond
      draw += 1 if scoreFirst == scoreSecond
    end

    format('%s:W=%d;D=%d;L=%d;Scored=%d;Conceded=%d;Points=%d', to_find, win, draw, lose, scored, conceded,
           (win * 3 + draw))
  end

  def self.stockList(listOfArt, listOfCat)
    # Creating dict/hash
    list = {}
    listOfCat.each { |cat| list[cat] = 0 }

    # Finding books
    listOfArt.each do |art|
      listOfCat.each do |cat|
        next unless art[0] == cat

        temp = 0
        data = art.split(' ')
        temp = list[cat].to_i + data[1].to_i
        list[cat] = temp
      end
    end

    # Exception if L or M are empty
    return '' if list.values.all?(&:zero?)

    # Creating string
    strList = []
    list.each { |key, value| strList.append("(#{key} : #{value})") }
    strList.join(' - ')
  end

  def self.artificial_rain(garden)
    left = 0
    longest_section = 0
    current_section = 1
    (1...garden.length).each do |i|
      if garden[i] < garden[i - 1]
        left = i
      elsif garden[i] > garden[i - 1]
        longest_section = longest_section < current_section ? current_section : longest_section
        current_section = i - left
      end
      current_section += 1
    end
    longest_section > current_section ? longest_section : current_section
  end
end
