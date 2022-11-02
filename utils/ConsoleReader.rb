class ConsoleReader

    def read_int
        while true
            temp = gets.chomp
            begin
                temp = Integer(temp)
                return temp
              rescue ArgumentError, TypeError
                puts "Invalid input, please try again:"
              end
        end
    end

    def read_float
        while true
            temp = gets.chomp
            begin
                temp = Float(temp)
                return temp
              rescue ArgumentError, TypeError
                puts "Invalid input, please try again:"
              end
        end
    end

    def read_string
        temp = gets.chomp
        return temp
    end
    
end