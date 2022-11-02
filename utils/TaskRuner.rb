require './utils/ConsoleReader.rb'

class TaskRuner
    @@user = ""
    @@reader = ConsoleReader.new

    def litres
        require "./kata/Implementation/#{@@user}/EightImpl.rb"
        puts "time:"
        time = @@reader.read_int   
        result = EightImpl.litres(time)
        puts "Result : #{result}"
    end

    def run_get_volume_of_cuboid
        puts "length:"
        length = @@reader.read_int
        puts "width:"
        width  = @@reader.read_int
        puts "height:"
        height = @@reader.read_int
        #result = EightImpl.get_volume_of_cuboid(length, width, height)
        puts result
    end

    def set_user(user) 
        @@user = user 
    end

    def get_user
        @@user
    end
end

