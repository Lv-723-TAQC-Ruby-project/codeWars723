require './kata/Six'

module BrylAndriiSixImpl
  class SixImpl < Six

    #Build a pile of Cubes
    def find_nb(m)
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

    #Easy Balance Checking
    def balance(b)
      clean = b.gsub(/[^0-9a-z \n.]+/i, '') # remove all non-alphanumeric characters
      num = clean.gsub(/[^0-9 \n.]+/i, '') # remove all non-numeric characters
      price = num.gsub(/^[\d+.\n]+/i, '') # remove all non-float characters
      int = price.gsub(/ /i, '') # remove all spaces
      arr = int.split(" ") # split into array
      temp = arr
      temp.map! { |n| sprintf('%.2f', n.to_f) }
      arr.to_a # convert to array
      arr.map!(&:to_f) # convert to float
      arr.map! { |n| sprintf('%.2f', n.to_f) } # format array to 2 decimal places
      clean = clean.gsub(/^$\n/i, '') #remove blank lines
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

    #Floating-point Approximation (I)
    def f(x)
      x / (1 + Math.sqrt(1 + x))
    end

    #Rainfall
    #not fully working
    def mean(town, strng)
      if town == ""
        return -1
      end
      if strng == ""
        return -1
      end
      if strng.include? town
        data = strng.split("\n")
        data.each do |x|
          if x.include? town
            x = x.split(":")
            x = x[1]
            x = x.split(",")
            sum = 0
            x.each do |y|
              y = y.split(" ")
              sum += y[1].to_f
            end
            return (sum / x.length).round(2)
          end
        end
      else
        return -1
      end
    end

    def variance(town, strng)
      if town == ""
        return -1
      end
      if strng == ""
        return -1
      end
      if strng.include? town
        data = strng.split("\n")
        data.each do |x|
          if x.include? town
            x = x.split(":")
            x = x[1]
            x = x.split(",")
            sum = 0
            x.each do |y|
              y = y.split(" ")
              sum += y[1].to_f
            end
            mean = sum / x.length
            sum = 0
            x.each do |y|
              y = y.split(" ")
              sum += (y[1].to_f - mean) ** 2
            end
            return (sum / x.length).round(2)
          end
        end
      else
        return -1
      end
    end

    #Ranking NBA teams
    def nba_cup(result_sheet, to_find) end

    #Help the bookseller !
    def stockList(listOfArt, listOfCat) end

    #Artificial Rain (retired)
    def artificial_rain(garden) end
  end
end
