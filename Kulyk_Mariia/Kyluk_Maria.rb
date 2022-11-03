require '../../codeWars723/Kulyk_Mariia/Keep_Hydrated'
require '../../codeWars723/Kulyk_Mariia/Volume'
require '../../codeWars723/Kulyk_Mariia/Converter_mpg'
require '../../codeWars723/Kulyk_Mariia/Convert_a_String_to_a_Number'
require '../../codeWars723/Kulyk_Mariia/Count_positives_sum_negatives'
require '../../codeWars723/Kulyk_Mariia/To_square_or_not'
require '../../codeWars723/Kulyk_Mariia/Wilson_Primes'
require '../../codeWars723/Kulyk_Mariia/Formatting_decimal_places'
require '../../codeWars723/Kulyk_Mariia/Find_numbers_which_are_divisible_by_given_number'
require '../../codeWars723/Kulyk_Mariia/Sum_of_the_first_nth_term_of_Series'
require '../../codeWars723/Kulyk_Mariia/Looking_for_a_benefactor'

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
    puts "Result = #{divisible_by(gets, gets)}"
  end

  def task10
    puts "Result = #{new_avg(gets, gets)}"
  end

  def task11
    puts "Enter number: "
    puts = "Result = #{series_sum(gets)}"
  end

end