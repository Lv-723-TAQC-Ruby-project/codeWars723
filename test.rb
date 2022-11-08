require './kata/Implementation/Implementation.rb'
require './utils/TaskRunner'

impl = {1 => Implementation::FedykSvyatosla}

puts impl[1]::EightImpl.litres(5)

runner = TaskRunner.new
runner.set_user(impl[1])

runner.litres