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
end
