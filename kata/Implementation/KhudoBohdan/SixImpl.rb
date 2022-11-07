require './kata/Six'
class SixImpl < Six

  # 13. Build a pile of Cubes
  def self.find_nb(m)
    n = 0
    while m > n
      n += 1
      m -= n ** 3
    end
    if m == 0
      return n
    else
      return -1
    end
  end

  # 14. Easy balance checking
  def self.balance(b)
    num = b.gsub(/[^0-9 \n.]+/i, '')
    num_arr  = num.gsub(/ /i, '').split(" ").to_a
    original_balance = num_arr[0]

    int = num.gsub(/\d*[.]\d+/i, '')
    int = int.gsub(/ /i, '')
    arr_int = int.split(" ").to_a

    words = b.gsub(/[^a-z \n]+/i, '')
    words_arr = words.gsub(/ /i, '').split(" ").to_a

    float = num.gsub(/^[\d+.\n]+/i, '')
    float = float.gsub(/ /i, '')
    arr_float = float.split(" ").to_a
    j = 0
    while j < arr_float.count
      arr_float[j] = format("%.2f", arr_float[j])
      j += 1
    end

    result_string = "Original Balance: " + format("%.2f", original_balance) + "\r\n"
    current_balance = original_balance.to_f
    sum = 0
    i = 0
    while i < arr_int.count
      current_balance -= arr_float[i].to_f
      sum += arr_float[i].to_f
      result_string += "#{arr_int[i]} #{words_arr[i]} #{arr_float[i]} Balance " + format("%.2f", current_balance) + "\r\n"
      i += 1
    end
    result_string += "Total expense  " + format("%.2f", sum) + "\r\nAverage expense  " + format("%.2f", sum/arr_float.count)

    result_string
  end

  # 15. Floating-point Approximation (I)
  def self.f(x)
    x / (1 + Math.sqrt(x + 1))
  end

  # 16. Rainfall
  def self.mean(town, strng)
    words = strng.gsub(/[^a-z \n:]+/i, '').gsub(/:/, "\n").split("\n").to_a

    towns = []
    i = 0
    while i < words.count
      towns.append(words[i])
      i += 2
    end

    numbers = strng.gsub(/[^0-9 \n.]+/i, '').split("\n").to_a
    avrg = []
    for number in numbers
      n_arr = number.split(" ").to_a
      sum = 0
      for n in  n_arr
        sum += n.to_f
      end
      avrg.append(sum / n_arr.count)
    end

    index = nil
    j = 0
    while j < towns.count
      if town == towns[j]
        index = j
      end
      j += 1
    end

    if index.nil?
      return -1
    else
      return avrg[index]
    end
  end

  # 16
  def self.variance(town, strng)
    words = strng.gsub(/[^a-z \n:]+/i, '').gsub(/:/, "\n").split("\n").to_a

    towns = []
    i = 0
    while i < words.count
      towns.append(words[i])
      i += 2
    end

    numbers = strng.gsub(/[^0-9 \n.]+/i, '').split("\n").to_a

    variance_arr = []
    for number in numbers
      n_arr = number.split(" ").to_a
      total_sum = 0
      for n in  n_arr
        total_sum += n.to_f
      end
      average = total_sum / n_arr.count

      sum = 0
      for n in n_arr
        sum += (n.to_f - average) ** 2
      end
      variance_arr.append(sum/n_arr.count)
    end

    index = nil
    j = 0
    while j < towns.count
      if town == towns[j]
        index = j
      end
      j += 1
    end

    if index.nil?
      return -1
    else
      return variance_arr[index]
    end
  end

  # 17. Ranking NBA
  def self.nba_cup(result_sheet, to_find)
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

  # 18. Help the bookseller!
  def self.stockList(l, m)
    if l == [] || m == []
      return ""
    end
    sum = []
    i =0
    while i < m.count
      sum.append(0)
      i += 1
    end

    for b in l
      books = b.split(" ").to_a
      j = 0
      while j < m.count
        if books[0][0] == m[j]
          sum[j] += books[1].to_i
        end
        j += 1
      end
    end

    result = ""
    k = 0
    while k < m.count - 1
      result += "(#{m[k]} : #{sum[k]}) - "
      k += 1
    end
    result += "(#{m[k]} : #{sum[k]})"

    return result
  end

  # 19. Artificial Rain
  def self.artificial_rain(garden)
    sections = 0
    number_of_sections = garden.count

    left_side = Array.new(number_of_sections, 0)
    right_side = Array.new(number_of_sections, 0)

    i = 1
    while i < number_of_sections
      if garden[i] >= garden[i - 1]
        left_side[i] = left_side[i - 1] + 1
      else
        left_side[i] = 0
      end
      i += 1
    end

    i = garden.count  - 2
    while i >= 0
      if garden[i] >= garden[i + 1]
        right_side[i] = right_side[i + 1] + 1
      else
        right_side[i] = 0
      end
      i -= 1
    end

    i = 0
    while i < garden.count
      sections = sections > right_side[i] + left_side[i] ? sections : right_side[i] + left_side[i]
      i += 1
    end

    sections + 1
  end

end
