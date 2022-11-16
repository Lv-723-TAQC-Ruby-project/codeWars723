# frozen_string_literal: true

require './kata/Implementation/KhudoBohdan/EightImpl'
require './kata/Implementation/KhudoBohdan/SevenImpl'
require './kata/Implementation/KhudoBohdan/SixImpl'
require './kata/Implementation/KhudoBohdan/FiveImpl'

module KhudoBohdanKata
  include KhudoBohdanEightImpl
  include KhudoBohdanSevenImpl
  include KhudoBohdanSixImpl
  include KhudoBohdanFiveImpl
end
