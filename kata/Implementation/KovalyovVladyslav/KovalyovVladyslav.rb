# frozen_string_literal: true

require './kata/Implementation/KovalyovVladyslav/EightImpl'
require './kata/Implementation/KovalyovVladyslav/SevenImpl'
require './kata/Implementation/KovalyovVladyslav/SixImpl'
require './kata/Implementation/KovalyovVladyslav/FiveImpl'

module KovalyovVladyslavKata
  include KovalyovVladyslavEightImpl
  include KovalyovVladyslavSevenImpl
  include KovalyovVladyslavSixImpl
  include KovalyovVladyslavFiveImpl
end
