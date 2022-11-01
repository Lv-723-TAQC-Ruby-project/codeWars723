require './Bohdan Khudo/Keep Hydrated!'
require './Bohdan Khudo/Volume'
require './Bohdan Khudo/Miles per gallon to kilometers per liter'
require './Bohdan Khudo/To square(root) or not to square(root)'
require './Bohdan Khudo/Count of positives and sum of negatives'
require './Bohdan Khudo/Convert a String to a Number'
require './Bohdan Khudo/Wilson primes'
require './Bohdan Khudo/Formatting decimal places'

class BohdanKhudo
  def task1
    puts "Input time:"
    time = gets.chomp.to_i
    puts "result = #{bkh1_litres(time)}"
  end

  def task2
    puts "Input time: length, width and height"
    length = gets.chomp.to_i
    width = gets.chomp.to_i
    height = gets.chomp.to_i
    puts "result = #{bkh2_get_volume_of_cuboid(length, width, height)}"

  end

  def task3
    puts "Input miles per gallon:"
    mpg = gets.chomp.to_f
    puts "result = #{bkh3_converter(mpg)}"
  end

  def task4
    arr = [25, 2, 9]
    puts "Input array: #{arr}"
    puts "result = #{bkh4_square_or_square_root(arr)}"
  end

  def task5
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
    puts "Input array: #{arr}"
    puts "result = #{bkh5_count_positives_sum_negatives(arr)}"
  end

  def task6
    puts "Input string:"
    str = gets.chomp
    puts "result = #{bkh6_string_to_number(str)}"
  end

  def task7
    puts "Input number:"
    n = gets.chomp.to_i
    puts "result = #{bkh7_am_I_Wilson(n)}"
  end

  def task8
    puts "Input number:"
    n = gets.chomp.to_f
    puts "result = #{bkh8_two_decimal_places(n)}"
  end

end