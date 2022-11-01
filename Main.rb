arr = Dir["Tasks/*"]

while true

    system ("cls")
    puts "List of students:\n\n"
    arr.each_with_index do | student, index |
        puts "#{index+1}. #{student}"
    end

    puts "\nPlease, input student number:"
    number = gets.chomp

    next if arr.length() < number.to_i or number.to_i <= 0
    break if "exit".include? number.downcase
    
    temp = Dir["#{arr[number.to_i-1]}/*.rb"]

    while true
        system ("cls")
        puts "List of tasks:\n\n"
        temp.each_with_index do | task, index |
            puts "#{index+1}. #{task}"
        end

        puts "\nPlease, input task number:"
        input = gets.chomp
        next if temp.length() < number.to_i or number.to_i <= 0
        break if "exit".include? input.downcase


        puts "============================================="
        system "ruby '#{temp[input.to_i-1]}'"
        puts "=============================================\n\n"

        puts "Do you want to continue checking the student tasks?[Yes/No]"
        input = gets.chomp
        break if "no".include? input.downcase
    end
end


