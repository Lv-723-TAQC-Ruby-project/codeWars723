# frozen_string_literal: true

require './kata/Six'

module KulykMariiaSixImpl
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

    def self.stockList(listOfArt, listOfCat)

      list = Hash.new()
      listOfCat.each{|cat| list[cat] = 0}

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
      list.each {|key, value| strList.append("(#{key} : #{value})") }
      return strList.join(' - ')

    end

    def self.f(x)
      x.to_f / (1 + Math.sqrt(1 + x.to_f))
    end
  end
end
