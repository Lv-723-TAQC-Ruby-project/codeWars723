require '../../codeWars723/Kulyk Mariia/Keep Hydrated.rb'
require '../../codeWars723/Kulyk Mariia/Volume.rb'
require '../../codeWars723/Kulyk Mariia/Converter mpg.rb'
require '../../codeWars723/Kulyk Mariia/Convert a String to a Number'
require '../../codeWars723/Kulyk Mariia/Count_positives_sum_negatives'
require '../../codeWars723/Kulyk Mariia/To square or not'
require '../../codeWars723/Kulyk Mariia/Wilson Primes'
require '../../codeWars723/Kulyk Mariia/Formatting decimal places'
require '../../codeWars723/Kulyk Mariia/Find numbers which are divisible by given number'
require '../../codeWars723/Kulyk Mariia/Sum of the first nth term of Series'
require '../../codeWars723/Kulyk Mariia/Looking for a benefactor'

class Kyluk_Mariia

  def task1
    puts "How long you would like cycling?"
    puts "Result = #{mk_litres(gets)}"
  end

  def task2
    puts "Result = #{get_volume_of_cuboid(length, width, height)}"
  end

  def task3
    puts "Result = #{converter(gets.to_f)}"
  end

  def task4
    puts "Result = #{square_or_square_root(gets)}"
  end

  def task5
    puts "Result = #{count_positives_sum_negatives(gets)} "
  end

  def task6
    puts "Result #{string_to_number(gets)}"
  end

  def task7
    puts "Result = #{am_I_Wilson(gets)}"
  end

  def task8
    puts "Result = #{two_decimal_places(gets)}"
  end

  def task9
    puts = "Result = #{divisible_by(gets, gets)}"
  end

  def task10
    puts = "Result = #{new_avg(gets, gets)}"
  end

  def task11
    puts "Enter number: "
    puts = "Result = #{series_sum(gets)}"
  end

end