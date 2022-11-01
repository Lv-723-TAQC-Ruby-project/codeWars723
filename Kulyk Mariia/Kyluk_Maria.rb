require '../../codeWars723/Kulyk Mariia/Keep Hydrated'
require '../../codeWars723/Kulyk Mariia/Volume'
require '../../codeWars723/Kulyk Mariia/Converter mpg'
class Kyluk_Mariia

  def task1
    puts "How long you would like cycling?"
    time = gets
    puts "Result = #{litres(time)}"
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

end