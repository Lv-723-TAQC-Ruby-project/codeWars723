# frozen_string_literal: true

require './kata/Implementation/Implementation'
require './utils/ConsoleReader'

class TaskRunner
  attr_accessor :user

  def initialize
    @reader = ConsoleReader.new
  end

  # Eight kata
  def litres
    puts 'time:'
    time = @reader.read_int
    result = @user::EightImpl.litres(time)
    puts "Result: #{result}"
  end

  def run_get_volume_of_cuboid
    puts 'length:'
    length = @reader.read_int
    puts 'width:'
    width = @reader.read_int
    puts 'height:'
    height = @reader.read_int
    result = @user::EightImpl.get_volume_of_cuboid(length, width, height)
    puts "Result: #{result}"
  end

  def converter
    puts 'Enter miles per imperial gallon: '
    mpg = @reader.read_float
    result = @user::EightImpl.converter(mpg)
    puts "Result: #{result}"
  end

  def square_or_square_root
    puts 'Enter array of integers:'
    arr = @reader.read_int_arr
    result = @user::EightImpl.square_or_square_root(arr)
    puts "Result: #{result}"
  end

  def count_positives_sum_negatives
    puts 'Enter array of integers:'
    arr = @reader.read_int_arr
    result = @user::EightImpl.count_positives_sum_negatives(arr)
    puts "Result: #{result}"
  end

  def string_to_number
    puts 'Enter number as string:'
    str = @reader.read_string
    result = @user::EightImpl.string_to_number(str)
    puts "Result: #{result}"
  end

  def am_I_Wilson
    puts 'Enter number:'
    number = @reader.read_int
    result = @user::EightImpl.am_I_Wilson(number)
    puts "Result: Number is Wilson: #{result}"
  end

  def two_decimal_places
    puts 'Enter float number:'
    number = @reader.read_float
    result = @user::EightImpl.two_decimal_places(number)
    puts "Result: #{result}"
  end

  def divisible_by
    puts 'Enter numbers:'
    numbers = @reader.read_int_arr
    puts 'Enter divisor:'
    divisor = @reader.read_int
    result = @user::EightImpl.divisible_by(numbers, divisor)
    puts "Result: #{result}"
  end

  # Seven kata
  def new_avg
    puts 'Enter array integers:'
    array = @reader.read_int_arr
    puts 'Enter average number:'
    number = @reader.read_int

    result = @user::SevenImpl.new_avg(array, number)
    puts "Result: #{result}"
  end

  def series_sum
    puts 'Enter number:'
    number = @reader.read_int

    result = @user::SevenImpl.series_sum(number)
    puts "Result: #{result}"
  end

  def where_is_he
    puts 'Enter number:'
    number = @reader.read_int
    puts 'Enter number:'
    number2 = @reader.read_int
    puts 'Enter number:'
    number3 = @reader.read_int

    result = @user::SevenImpl.where_is_he(number, number2, number3)
    puts "Result: #{result}"
  end

  # Six
  def find_nb
    puts 'Enter number:'
    number = @reader.read_int

    result = @user::SixImpl.find_nb(number)
    puts "Result: #{result}"
  end

  def balance
    puts 'Enter check book:'
    str1 = @reader.read_string

    result = @user::SixImpl.balance(str1)
    puts "Result: #{result}"
  end

  def f
    puts 'Enter float number:'
    number = @reader.read_float

    result = @user::SixImpl.f(number)
    puts "Result: #{result}"
  end

  def rainfall
    puts 'Enter town:'
    str1 = @reader.read_string
    puts 'Enter data rainfall:'
    str2 = @reader.read_string

    mean = @user::SixImpl.mean(str1, str2)
    variance = @user::SixImpl.variance(str1, str2)
    puts "Result: mean-#{mean} variance-#{variance}"
  end

  def nba_cup
    puts 'Enter result sheet:'
    str1 = @reader.read_string
    puts 'Enter team:'
    str2 = @reader.read_string

    result = @user::SixImpl.nba - cup(str1, str2)
    puts "Result: #{result}"
  end

  def stockList
    # require @require_six_impl

    # ToDo

    # result = @user::SixImpl.()
    # puts "Result: #{result}"
  end

  def artificial_rain
    puts 'Enter array integers:'
    array = @reader.read_int_arr

    result = @user::SixImpl.artificial_rain(array)
    puts "Result: #{result}"
  end

  # FiveKata

  def is_prime
    # puts 'Enter an integer number:'
    # number = @reader.read_int
    #
    # result = FiveImpl.is_prime(number)
    # puts "Result: #{result}"
  end

  def gap
    # result = FiveImpl.gap(number)
    # puts "Result: #{result}"
  end

  def zeros
    puts 'Enter an integer number:'
    number = @reader.read_int

    result = @user::FiveImpl.zeros(number)
    puts "Result: the number of trailing zeros is #{result}"
  end

  def perimeter
    puts 'Enter the number of squares:'
    number = @reader.read_int

    result = @user::FiveImpl.perimeter(number)
    puts "Result: #{result}"
  end

  def solve
    puts 'Enter the number:'
    number = @reader.read_int

    result = @user::FiveImpl.solve(number)
    puts "Result: #{result}"
  end

  def smallest
    puts 'Enter a positive number:'
    number = @reader.read_int

    result = @user::FiveImpl.smallest(number)
    puts "Result: #{result}"
  end
end
