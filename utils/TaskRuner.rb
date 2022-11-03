# frozen_string_literal: true

require './utils/ConsoleReader'

class TaskRuner
  @@user = ''
  @@reader = ConsoleReader.new

  def litres
    require "./kata/Implementation/#{@@user}/EightImpl.rb"
    puts 'time:'
    time = @@reader.read_int
    result = EightImpl.litres(time)
    puts "Result : #{result}"
  end

  def run_get_volume_of_cuboid
    puts 'length:'
    length = @@reader.read_int
    puts 'width:'
    width = @@reader.read_int
    puts 'height:'
    height = @@reader.read_int
    # result = EightImpl.get_volume_of_cuboid(length, width, height)
    puts result
  end

  def converter
    puts "Enter miles per imperial gallon: "
    mpg = @@reader.read_float
    result = EightImpl.converter(mpg)
    puts result
  end

  def square_or_square_root
    # TODO
  end

  def set_user(user)
    @@user = user
  end

  def get_user
    @@user
  end
end
