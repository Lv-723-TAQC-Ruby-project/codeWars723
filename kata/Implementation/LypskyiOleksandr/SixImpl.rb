# frozen_string_literal: true

require './kata/Six'
require 'bigdecimal/math'
module LypskyiOleksandrSixImpl
  class SixImpl < Six
    # 13. Build a pile of Cubes
    def self.find_nb(m)
      volume = 0
      number_of_rows = 1

      loop do
        volume += number_of_rows ** 3
        if volume >= m
          return volume == m ? number_of_rows : -1
        end

        number_of_rows += 1
      end
    end

    # 14. Easy balance checking
    def self.balance(b)
      array_of_strings = b.split("\n")
      balance = array_of_strings.delete_at(0).to_f
      string_to_return = "Original Balance: #{'%.2f' % balance}"
      total_expense = 0
      total_items = 0
      array_of_strings.each do |i|
        next if i.empty?

        temp_array = i.split
        next if temp_array[2].nil? 
        
        price_of_item = temp_array[2].gsub(/[^0-9. ]/i, '').to_f
        total_expense += price_of_item
        total_items += 1
        balance -= price_of_item
        price_of_item = '%.2f' % price_of_item
        string_to_return += "\r\n#{temp_array[0]} #{temp_array[1].gsub(/[^a-zA-Z ]/i,
                                                                       '')} #{price_of_item} Balance #{'%.2f' % balance}"
      end
      string_to_return += "\r\nTotal expense  #{'%.2f' % total_expense}\r\nAverage expense  #{format('%.2f',
                                                                                                     (total_expense / total_items))}"

      string_to_return
    end

    # 15. Floating-point Approximation (I)
    def self.f(x)
      BigMath.sqrt((1 + BigDecimal(x.to_s)), 20) - 1
    end

    # 16. Rainfall
    def self.to_dict_load(data)
      all_towns = data.split("\n")
      town_wise = {}
      all_towns.each do |town|
        town_name, values = town.split(':')
        values = values.split(',')
        vals = []
        values.each do |x|
          val = x.split(' ')[1]
          vals << val.to_f
        end
        mean = vals.sum / vals.size
        variance_array = []
        vals.each do |record|
          variance_array << ((mean - record.to_f) ** 2)
        end
        variance = variance_array.sum / variance_array.size
        town_wise[town_name] = { 'mean' => mean, 'variance' => variance }
      end
      town_wise
    end

    def self.mean(town, data)
      dt = to_dict_load(data)
      return dt[town]['mean'] if dt.include? town

      -1
    end

    def self.variance(town, data)
      dt = to_dict_load(data)
      return dt[town]['variance'] if dt.include? town

      -1
    end

    # 17. Ranking NBA
def self.nba_cup(result_sheet, to_find)
  return '' if to_find == ''

  team_results = {}

  raw_data = result_sheet.split(',')
  raw_data.each do |res|
    return "Error(float number):#{res}" if res.include? '.'

    scores_from_raw_data = res.scan(/\d{2,3}/)
    first_team_score = scores_from_raw_data.first
    second_team_score = scores_from_raw_data.last
    first_team_name, second_team_name = res.split(first_team_score)
    first_team_name = first_team_name.strip
    second_team_name = second_team_name.split(' ')[0..-2].join(' ')
    first_team_score = first_team_score.to_i
    second_team_score = second_team_score.to_i

    unless team_results.key?(first_team_name)
      team_results[first_team_name] =
        { 'W' => 0, 'D' => 0, 'L' => 0, 'Scored' => 0, 'Conceded' => 0, 'Points' => 0 }
    end

    unless team_results.key?(second_team_name)
      team_results[second_team_name] =
        { 'W' => 0, 'D' => 0, 'L' => 0, 'Scored' => 0, 'Conceded' => 0, 'Points' => 0 }
    end

    if first_team_score > second_team_score
      team_results[first_team_name]['W'] += 1
      team_results[first_team_name]['Scored'] += first_team_score
      team_results[first_team_name]['Conceded'] += second_team_score
      team_results[first_team_name]['Points'] += 3
      team_results[second_team_name]['L'] += 1
      team_results[second_team_name]['Scored'] += second_team_score
      team_results[second_team_name]['Conceded'] += first_team_score

    elsif first_team_score < second_team_score
      team_results[second_team_name]['W'] += 1
      team_results[second_team_name]['Scored'] += second_team_score
      team_results[second_team_name]['Conceded'] += first_team_score
      team_results[second_team_name]['Points'] += 3
      team_results[first_team_name]['L'] += 1
      team_results[first_team_name]['Scored'] += first_team_score
      team_results[first_team_name]['Conceded'] += second_team_score

    else
      team_results[first_team_name]['D'] += 1
      team_results[second_team_name]['D'] += 1
      team_results[first_team_name]['Scored'] += first_team_score
      team_results[second_team_name]['Scored'] += second_team_score
      team_results[first_team_name]['Conceded'] += second_team_score
      team_results[second_team_name]['Conceded'] += first_team_score
      team_results[first_team_name]['Points'] += 1
      team_results[second_team_name]['Points'] += 1
    end
  end

  if team_results.key?(to_find)
    "#{to_find}:W=#{team_results[to_find]['W']};D=#{team_results[to_find]['D']};L=#{team_results[to_find]['L']};Scored=#{team_results[to_find]['Scored']};Conceded=#{team_results[to_find]['Conceded']};Points=#{team_results[to_find]['Points']}"
  else
    "#{to_find}:This team didn't play!"
  end
end

    # 18. Help the bookseller!
    def self.stockList(listOfArt, listOfCat)
      return '' if listOfArt.empty? || listOfCat.empty?

      books_results = {}
      listOfCat.each do |cat|
        books_results[cat] = 0
        listOfArt.each do |book|
          book_category, quantity_of_books = book.split(' ')
          books_results[cat] += quantity_of_books.to_i if book_category[0] == cat
        end
      end

      array_to_return = []
      books_results.each do |key, value|
        array_to_return << "(#{key} : #{value})"
      end

      array_to_return.join(' - ')
    end

    # 19. Artificial Rain
    def self.artificial_rain(garden)
      left = 0
      longest_section = 0
      current_section = 1
      (1...garden.length).each do |i|
        if garden[i] < garden[i - 1]
          left = i
        elsif garden[i] > garden[i - 1]
          longest_section = if longest_section < current_section
                              current_section
                            else
                              longest_section
                            end
          current_section = i - left
        end
        current_section += 1
      end
      if longest_section > current_section
        longest_section
      else
        current_section
      end
    end
  end
end

