class TaskRuner
    @@user = "A"
    @@reader = ConsoleReader.new

    def run_get_volume_of_cuboid
        puts "length:"
        length = reader.read_int
        puts "width:"
        width  = reader.read_int
        puts "height:"
        height = @reader.read_int
        #user.k8.get_volume_of_cuboid
        result = EightImpl.get_volume_of_cuboid(length, width, height)
        puts result
    end
end