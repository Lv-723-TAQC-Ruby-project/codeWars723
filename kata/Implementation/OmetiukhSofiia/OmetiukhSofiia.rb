require './kata/Implementation/OmetiukhSofiia/EightImpl.rb'
require './kata/Implementation/OmetiukhSofiia/SevenImpl.rb'
require './kata/Implementation/OmetiukhSofiia/SixImpl.rb'
require './kata/Implementation/OmetiukhSofiia/FiveImpl.rb'

module OmetiukhSofiia 
  include OmetiukhSofiiaEightImpl
  include OmetiukhSofiiaSevenImpl
  include OmetiukhSofiiaSixImpl
  include OmetiukhSofiiaFiveImpl
end
