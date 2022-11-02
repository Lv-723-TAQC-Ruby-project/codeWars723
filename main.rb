require './utils/TaskRuner.rb'

students = %w[BrylAndrii OmetiukhSofiya LypskyiOleksandr KovalovVladyslav FedykSvyatoslav KovalovStanislav KulykMery KmytiukNatalyia KhudoBohdan]

puts "Students:"
i = 0
while i < students.count
  puts "#{i + 1}. #{students[i]}"
  i += 1
end

runner = TaskRuner.new

t = true
while t
  puts "Please, input student number [1-9]:"
  student_number = gets.chomp.to_i
  if student_number < 1 || student_number > 9
    puts "Wrong student number!"
    break
  end
  runner.set_user(students[student_number - 1])

  puts "Please, input task number [1-24]: "
  task_number = gets.chomp

  case task_number
  when "1"
    runner.litres
  when "2"
    runner.run_get_volume_of_cuboid
  when "3"
    runner.converter
  else
    puts "Wrong task number"
  end
  puts "Do you want to pick new student? true/false"
  t = gets.chomp
  if t == "true"
    t = true
  else
    t = false
  end
end
