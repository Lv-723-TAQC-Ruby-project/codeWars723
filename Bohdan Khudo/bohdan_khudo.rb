require './Bohdan Khudo/Keep Hydrated!'
require './Bohdan Khudo/Volume'

class BohdanKhudo
  def task1
    puts 'Input time:'
    time = gets.chomp.to_i
    puts "result = #{litres(time)}"
  end

  def task2
    puts 'Input time: length, width and height'
    length = gets.chomp.to_i
    width = gets.chomp.to_i
    height = gets.chomp.to_i
    puts "result = #{get_volume_of_cuboid(length, width, height)}"

  end

end