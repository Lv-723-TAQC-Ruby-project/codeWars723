# frozen_string_literal: true

require './kata/Implementation/OmetiukhSofiia/EightImpl'
require './kata/Implementation/OmetiukhSofiia/SevenImpl'
require './kata/Implementation/OmetiukhSofiia/SixImpl'
require './kata/Implementation/OmetiukhSofiia/FiveImpl'

module OmetiukhSofiiaKata
  include OmetiukhSofiiaEightImpl
  include OmetiukhSofiiaSevenImpl
  include OmetiukhSofiiaSixImpl
  include OmetiukhSofiiaFiveImpl
end
