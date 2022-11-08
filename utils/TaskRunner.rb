# frozen_string_literal: true

require './utils/ConsoleReader'

class TaskRunner
  @@user = ''
  @@reader = ConsoleReader.new

  # Eight kata
  def litres
    puts 'time:'
    time = @@reader.read_int
    result = EightImpl.litres(time)
    puts "Result: #{result}"
  end

  def run_get_volume_of_cuboid
    puts 'length:'
    length = @@reader.read_int
    puts 'width:'
    width = @@reader.read_int
    puts 'height:'
    height = @@reader.read_int
    result = EightImpl.get_volume_of_cuboid(length, width, height)
    puts "Result: #{result}"
  end

  def converter
    puts 'Enter miles per imperial gallon: '
    mpg = @@reader.read_float
    result = EightImpl.converter(mpg)
    puts "Result: #{result}"
  end

  def square_or_square_root
    puts 'Enter array of integers:'
    arr = @@reader.read_int_arr
    result = EightImpl.square_or_square_root(arr)
    puts "Result: #{result}"
  end

  def count_positives_sum_negatives
    puts 'Enter array of integers:'
    arr = @@reader.read_int_arr
    result = EightImpl.count_positives_sum_negatives(arr)
    puts "Result: #{result}"
  end

  def string_to_number
    puts 'Enter number as string:'
    str = @@reader.read_string
    result = EightImpl.string_to_number(str)
    puts "Result: #{result}"
  end

  def am_I_Wilson
    puts 'Enter number:'
    number = @@reader.read_int
    result = EightImpl.am_I_Wilson(number)
    puts "Result: Number is Wilson: #{result}"
  end

  def two_decimal_places
    puts 'Enter float number:'
    number = @@reader.read_float
    result = EightImpl.two_decimal_places(number)
    puts "Result: #{result}"
  end

  def divisible_by
    puts 'Enter numbers:'
    numbers = @@reader.read_int_arr
    puts 'Enter divisor:'
    divisor = @@reader.read_int
    result = EightImpl.divisible_by(numbers, divisor)
    puts "Result: #{result}"
  end

  # Seven kata
  def new_avg
    puts 'Enter array integers:'
    array = @@reader.read_int_arr
    puts 'Enter average number:'
    number = @@reader.read_int

    result = SevenImpl.new_avg(array, number)
    puts "Result: #{result}"
  end

  def series_sum
    puts 'Enter number:'
    number = @@reader.read_int

    result = SevenImpl.series_sum(number)
    puts "Result: #{result}"
  end

  def where_is_he
    puts 'Enter number:'
    number = @@reader.read_int
    puts 'Enter number:'
    number2 = @@reader.read_int
    puts 'Enter number:'
    number3 = @@reader.read_int

    result = SevenImpl.where_is_he(number, number2, number3)
    puts "Result: #{result}"
  end

  # Six
  def find_nb
    puts 'Enter number:'
    number = @@reader.read_int

    result = SixImpl.find_nb(number)
    puts "Result: #{result}"
  end

  def balance(_b)
    puts 'Enter check book:'
    str1 = @@reader.read_string

    result = SixImpl.balance(str1)
    puts "Result: #{result}"
  end

  def f(_x)
    puts 'Enter float number:'
    number = @@reader.read_float

    result = SixImpl.f(number)
    puts "Result: #{result}"
  end

  def rainfall(_town, _strng)
    puts 'Enter town:'
    str1 = @@reader.read_string
    puts 'Enter data rainfall:'
    str2 = @@reader.read_string

    mean = SixImpl.mean(str1, str2)
    variance = SixImpl.variance(str1, str2)
    puts "Result: mean-#{mean} variance-#{variance}"
  end

  def nba_cup(_result_sheet, _to_find)
    puts 'Enter result sheet:'
    str1 = @@reader.read_string
    puts 'Enter team:'
    str2 = @@reader.read_string

    result = SixImpl.nba - cup(str1, str2)
    puts "Result: #{result}"
  end

  def stockList(listOfArt, listOfCat)
    # require @require_six_impl

    # ToDo

    # result = SixImpl.()
    # puts "Result: #{result}"
  end

  def artificial_rain(_garden)
    puts 'Enter array integers:'
    array = @@reader.read_int_arr

    result = SixImpl.artificial_rain(array)
    puts "Result: #{result}"
  end

  # FiveKata

  def is_prime
    # puts 'Enter an integer number:'
    # number = @@reader.read_int
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
    number = @@reader.read_int

    result = FiveImpl.zeros(number)
    puts "Result: the number of trailing zeros is #{result}"
  end

  def perimeter
    puts 'Enter the number of squares:'
    number = @@reader.read_int

    result = FiveImpl.perimeter(number)
    puts "Result: #{result}"
  end

  def solve
    puts 'Enter the number:'
    number = @@reader.read_int

    result = FiveImpl.solve(number)
    puts "Result: #{result}"
  end

  def smallest
    puts 'Enter a positive number:'
    number = @@reader.read_int

    result = FiveImpl.smallest(number)
    puts "Result: #{result}"
  end

  def set_user(user)
    @@user = user
    @require = Dir["./kata/Implementation/#{@@user}/*.rb"].sort.each { |file| require file }
  end

  def get_user
    @@user
  end
end
