# frozen_string_literal: true

require './utils/ConsoleReader'

class TaskRunner
  @@user = ''
  @@reader = ConsoleReader.new

  @require_eight_impl = ''
  def litres
    # require "./kata/Implementation/#{@@user}/EightImpl.rb"
    require @require_eight_impl
    puts 'time:'
    time = @@reader.read_int
    result = EightImpl.litres(time)
    puts "Result: #{result}"
  end

  def run_get_volume_of_cuboid
    require @require_eight_impl
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
    require @require_eight_impl
    puts "Enter miles per imperial gallon: "
    mpg = @@reader.read_float
    result = EightImpl.converter(mpg)
    puts "Result: #{result}"
  end

  def square_or_square_root
    require @require_eight_impl
    puts "Enter array of integers:"
    arr = @@reader.read_int_arr
    result = EightImpl.square_or_square_root(arr)
    puts "Result: #{result}"
  end

  def set_user(user)
    @@user = user
    @require_eight_impl = "./kata/Implementation/#{@@user}/EightImpl.rb"
  end

  def get_user
    @@user
  end
end
