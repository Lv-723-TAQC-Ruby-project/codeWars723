# frozen_string_literal: true

require './kata/Implementation/LypskyiOleksandr/EightImpl'
require './kata/Implementation/LypskyiOleksandr/SevenImpl'
require './kata/Implementation/LypskyiOleksandr/SixImpl'
require './kata/Implementation/LypskyiOleksandr/FiveImpl'

module LypskyiOleksandrKata
  include LypskyiOleksandrEightImpl
  include LypskyiOleksandrSevenImpl
  include LypskyiOleksandrSixImpl
  include LypskyiOleksandrFiveImpl
end
