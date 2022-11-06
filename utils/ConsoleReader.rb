# frozen_string_literal: true

class ConsoleReader
  def read_int
    loop do
      temp = gets.chomp
      begin
        temp = Integer(temp)
        return temp
      rescue ArgumentError, TypeError
        puts 'Invalid input, please try again:'
      end
    end
  end

  def read_float
    loop do
      temp = gets.chomp
      begin
        temp = Float(temp)
        return temp
      rescue ArgumentError, TypeError
        puts 'Invalid input, please try again:'
      end
    end
  end

  def read_string
    gets.chomp
  end

  def read_int_arr
    count = read_int
    arr = Array.new(count)
    i = 0
    while i < count
      puts "Enter a[#{i + 1}]:"
      a = read_int
      arr[i] = a
      i += 1
    end
    arr
  end
end
