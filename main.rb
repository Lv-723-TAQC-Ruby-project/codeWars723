# frozen_string_literal: true
require './utils/TaskRuner'

students = Dir["kata/Implementation/*"]
students.map { |string| string.slice! "kata/Implementation/"}

puts 'Students:'
i = 0
while i < students.count
  puts "#{i + 1}. #{students[i]}"
  i += 1
end

runner = TaskRunner.new
methods = {
  1 => runner.method(:litres),
  2 => runner.method(:run_get_volume_of_cuboid),
  3 => runner.method(:converter),
  4 => runner.method(:square_or_square_root),
  5 => runner.method(:count_positives_sum_negatives),
  6 => runner.method(:string_to_number),
  7 => runner.method(:am_I_Wilson),
  8 => runner.method(:two_decimal_places),
  9 => runner.method(:divisible_by),
  10 => runner.method(:new_avg),
  11 => runner.method(:series_sum),
  12 => runner.method(:where_is_he)
}

t = true
while t
  puts 'Please, input student number [1-9]:'
  student_number = gets.chomp.to_i
  if student_number < 1 || student_number > 9
    puts 'Wrong student number!'
    break
  end
  runner.set_user(students[student_number - 1])

  puts 'Please, input task number [1-24]: '
  task_number = gets.chomp.to_i
  if task_number < 1 || task_number > 24
    puts 'Wrong task number!'
    break
  end

  methods[task_number].call

  puts 'Do you want to pick new student? true/false'
  t = gets.chomp
  t = t == 'true' || t == 't'
end
