require './Oleksandr Lypskyi/1. Keep_Hydrated'
require './Oleksandr Lypskyi/2. Volume of a Cuboid'
require './Oleksandr Lypskyi/3. Miles per gallon to kilometers per liter'
require './Oleksandr Lypskyi/4. To square(root) or not to square(root)'
require './Oleksandr Lypskyi/5. Count of positives'
require './Oleksandr Lypskyi/6. Convert a String to a Number'
require './Oleksandr Lypskyi/7. Wilson primes'
require './Oleksandr Lypskyi/8. Formatting decimal places'
require './Oleksandr Lypskyi/9. Find numbers which are divisible by given number'
require './Oleksandr Lypskyi/10. Looking for a benefactor'
require './Oleksandr Lypskyi/11. Sum of the first nth term of Series'
require './Oleksandr Lypskyi/12. Where is Vasya'
require './Oleksandr Lypskyi/13. Build a pile of Cubes'
require './Oleksandr Lypskyi/14. Easy balance checking'
require './Oleksandr Lypskyi/15. Floating-point Approximation'
require './Oleksandr Lypskyi/16. Rainfall'

class OleksandrLypskyi
  def task1
    puts "Input time:"
    time = gets.chomp.to_i
    puts "result = #{OL_litres(time)}"
  end

  def task2
    puts "Input time: length, width and height"
    length = gets.chomp.to_i
    width = gets.chomp.to_i
    height = gets.chomp.to_i
    puts "result = #{OL_get_volume_of_cuboid(length, width, height)}"

  end

  def task3
    puts "Input miles per gallon:"
    mpg = gets.chomp.to_f
    puts "result = #{OL_converter(mpg)}"
  end

  def task4
    arr = [25, 2, 9]
    puts "Input array: #{arr}"
    puts "result = #{OL_square_or_square_root(arr)}"
  end

  def task5
    arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
    puts "Input array: #{arr}"
    puts "result = #{OL_count_positives_sum_negatives(arr)}"
  end

  def task6
    puts "Input string:"
    str = gets.chomp
    puts "result = #{OL_string_to_number(str)}"
  end

  def task7
    puts "Input number:"
    n = gets.chomp.to_i
    puts "result = #{OL_am_I_Wilson(n)}"
  end

  def task8
    puts "Input number:"
    n = gets.chomp.to_f
    puts "result = #{OL_two_decimal_places(n)}"
  end

end
