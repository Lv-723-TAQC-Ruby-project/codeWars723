require './Bohdan Khudo/bohdan_khudo.rb'
require './Bryl Andrii/bryl_andrii.rb'

puts "Students:
1.Bryl Andrii
2.Ometiukh Sofiya
3.Lypskyi Oleksandr
4.Kovalov Vladyslav
5.Fedyk Svyatoslav
6.Kovalov Stanislav
7.Kulyk Mery
8.Kmytiuk Natalyia
9.Bohdan Khudo"

t = "y"
while t == "y"
  puts "Please, input student number [1-9]:"
  student_number = gets.chomp
  puts "Please, input task number [1-24]: "
  task_number = gets.chomp

  def run_task(student, task_number)
    case task_number
    when "1"
      student.task1
    when "2"
      student.task2
    when "3"
      student.task3
    when "4"
      student.task4
    when "5"
      student.task5
    when "6"
      student.task6
    when "7"
      student.task7
    when "8"
      student.task8
    when "9"
      student.task9
    when "10"
      student.task10
    when "11"
      student.task11
    when "12"
      student.task12
    when "13"
      student.task13
    when "14"
      student.task14
    when "15"
      student.task15
    when "16"
      student.task16
    when "17"
      student.task17
    when "18"
      student.task18
    when "19"
      student.task19
    when "20"
      student.task20
    when "21"
      student.task21
    when "22"
      student.task22
    when "23"
      student.task23
    when "24"
      student.task24
    else
      puts "Wrong task number"
    end

  end

  case student_number
  when "1"
    student = BrylAndrii.new
    run_task(student, task_number)
  when "2"
    student = OmetiukhSofiya.new
    run_task(student, task_number)
  when "3"
    student = LypskyiOleksandr.new
    run_task(student, task_number)
  when "4"
    student = KovalovVladyslav.new
    run_task(student, task_number)
  when "5"
    student = FedykSvyatoslav.new
    run_task(student, task_number)
  when "6"
    student = KovalovStanislav.new
    run_task(student, task_number)
  when "7"
    student = KulykMery.new
    run_task(student, task_number)
  when "8"
    student = KmytiukNatalyia.new
    run_task(student, task_number)
  when "9"
    student = BohdanKhudo.new
    run_task(student, task_number)
  else
    puts "Wrong student number!"
  end

  puts "Do you want to pick new student? y/n"
  t = gets.chomp

end

