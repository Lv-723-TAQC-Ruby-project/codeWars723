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
    data = 'Rome:Jan 81.2,Feb 63.2,Mar 70.3,Apr 55.7,May 53.0,Jun 36.4,Jul 17.5,Aug 27.5,Sep 60.9,Oct 117.7,Nov 111.0,Dec 97.9' + "\n" \
           'London:Jan 48.0,Feb 38.9,Mar 39.9,Apr 42.2,May 47.3,Jun 52.1,Jul 59.5,Aug 57.2,Sep 55.4,Oct 62.0,Nov 59.0,Dec 52.9' + "\n" \
           'Paris:Jan 182.3,Feb 120.6,Mar 158.1,Apr 204.9,May 323.1,Jun 300.5,Jul 236.8,Aug 192.9,Sep 66.3,Oct 63.3,Nov 83.2,Dec 154.7' + "\n" \
           'NY:Jan 108.7,Feb 101.8,Mar 131.9,Apr 93.5,May 98.8,Jun 93.6,Jul 102.2,Aug 131.8,Sep 92.0,Oct 82.3,Nov 107.8,Dec 94.2' + "\n" \
           'Vancouver:Jan 145.7,Feb 121.4,Mar 102.3,Apr 69.2,May 55.8,Jun 47.1,Jul 31.3,Aug 37.0,Sep 59.6,Oct 116.3,Nov 154.6,Dec 171.5' + "\n" \
           'Sydney:Jan 103.4,Feb 111.0,Mar 131.3,Apr 129.7,May 123.0,Jun 129.2,Jul 102.8,Aug 80.3,Sep 69.3,Oct 82.6,Nov 81.4,Dec 78.2' + "\n" \
           'Bangkok:Jan 10.6,Feb 28.2,Mar 30.7,Apr 71.8,May 189.4,Jun 151.7,Jul 158.2,Aug 187.0,Sep 319.9,Oct 230.8,Nov 57.3,Dec 9.4' + "\n" \
           'Tokyo:Jan 49.9,Feb 71.5,Mar 106.4,Apr 129.2,May 144.0,Jun 176.0,Jul 135.6,Aug 148.5,Sep 216.4,Oct 194.1,Nov 95.6,Dec 54.4' + "\n" \
           'Beijing:Jan 3.9,Feb 4.7,Mar 8.2,Apr 18.4,May 33.0,Jun 78.1,Jul 224.3,Aug 170.0,Sep 58.4,Oct 18.0,Nov 9.3,Dec 2.7' + "\n" \
           'Lima:Jan 1.2,Feb 0.9,Mar 0.7,Apr 0.4,May 0.6,Jun 1.8,Jul 4.4,Aug 3.1,Sep 3.3,Oct 1.7,Nov 0.5,Dec 0.7'
    puts 'Data rainfall:'
    puts data
    puts 'Enter town:'
    town = @reader.read_string

    mean = @user::SixImpl.mean(town, data)
    variance = @user::SixImpl.variance(town, data)
    puts "Result: mean-#{mean} variance-#{variance}"
  end

  def nba_cup
    result = 'Los Angeles Clippers 104 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112,'\
    'Los Angeles Lakers 111 Minnesota Timberwolves 112,Phoenix Suns 95 Dallas Mavericks 111,Portland Trail Blazers 112 New Orleans Pelicans 94,'\
    'Sacramento Kings 104 Los Angeles Clippers 111,Houston Rockets 85 Denver Nuggets 105,Memphis Grizzlies 76 Cleveland Cavaliers 106,'\
    'Milwaukee Bucks 97 New York Knicks 122,Oklahoma City Thunder 112 San Antonio Spurs 106,Boston Celtics 112 Philadelphia 76ers 95,'\
    'Brooklyn Nets 100 Chicago Bulls 115,Detroit Pistons 92 Utah Jazz 87,Miami Heat 104 Charlotte Hornets 94,'\
    'Toronto Raptors 106 Indiana Pacers 99,Orlando Magic 87 Washington Wizards 88,Golden State Warriors 111 New Orleans Pelicans 95,'\
    'Atlanta Hawks 94 Detroit Pistons 106,Chicago Bulls 97 Cleveland Cavaliers 95,'\
    'San Antonio Spurs 111 Houston Rockets 86,Chicago Bulls 103 Dallas Mavericks 102,Minnesota Timberwolves 112 Milwaukee Bucks 108,'\
    'New Orleans Pelicans 93 Miami Heat 90,Boston Celtics 81 Philadelphia 76ers 65,Detroit Pistons 115 Atlanta Hawks 87,'\
    'Toronto Raptors 92 Washington Wizards 82,Orlando Magic 86 Memphis Grizzlies 76,Los Angeles Clippers 115 Portland Trail Blazers 109,'\
    'Los Angeles Lakers 97 Golden State Warriors 136,Utah Jazz 98 Denver Nuggets 78,Boston Celtics 99 New York Knicks 85,'\
    'Indiana Pacers 98 Charlotte Hornets 86,Dallas Mavericks 87 Phoenix Suns 99,Atlanta Hawks 81 Memphis Grizzlies 82,'\
    'Miami Heat 110 Washington Wizards 105,Detroit Pistons 94 Charlotte Hornets 99,Orlando Magic 110 New Orleans Pelicans 107,'\
    'Los Angeles Clippers 130 Golden State Warriors 95,Utah Jazz 102 Oklahoma City Thunder 113,San Antonio Spurs 84 Phoenix Suns 104,'\
    'Chicago Bulls 103 Indiana Pacers 94,Milwaukee Bucks 106 Minnesota Timberwolves 88,Los Angeles Lakers 104 Portland Trail Blazers 102,'\
    'Houston Rockets 120 New Orleans Pelicans 100,Boston Celtics 111 Brooklyn Nets 105,Charlotte Hornets 94 Chicago Bulls 86,'\
    'Cleveland Cavaliers 103 Dallas Mavericks 97'
    puts 'Result sheet:'
    puts result
    puts 'Enter team:'
    team = @reader.read_string

    result = @user::SixImpl.nba_cup(result, team)
    puts "Result: #{result}"
  end

  def stockList
    arr1 = ['ABAR 200', 'CDXE 500', 'BKWR 250', 'BTSQ 890', 'DRTY 600']
    puts 'Stocklist:'
    puts arr1
    puts 'Enter list of categories:'
    arr2 = @reader.read_string_arr

    result = @user::SixImpl.stockList(arr1, arr2)
    puts "Result: #{result}"
  end

  def artificial_rain
    puts 'Enter array integers:'
    array = @reader.read_int_arr

    result = @user::SixImpl.artificial_rain(array)
    puts "Result: #{result}"
  end

  # FiveKata
  def gap
    puts 'Enter 3 integer number:'
    number1 = @reader.read_int
    number2 = @reader.read_int
    number3 = @reader.read_int

    result = @user::FiveImpl.gap(number1, number2, number3)
    puts "Result: #{result}"
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
