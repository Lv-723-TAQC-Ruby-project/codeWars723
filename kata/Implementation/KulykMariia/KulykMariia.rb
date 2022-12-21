# frozen_string_literal: true

require './kata/Implementation/KulykMariia/EightImpl'
require './kata/Implementation/KulykMariia/SevenImpl'
require './kata/Implementation/KulykMariia/SixImpl'
require './kata/Implementation/KulykMariia/FiveImpl'

module KulykMariiaKata
  include KulykMariiaEightImpl
  include KulykMariiaSevenImpl
  include KulykMariiaSixImpl
  include KulykMariiaFiveImpl
end
