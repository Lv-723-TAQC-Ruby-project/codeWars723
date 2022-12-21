# frozen_string_literal: true

require './kata/Implementation/BrylAndrii/EightImpl'
require './kata/Implementation/BrylAndrii/SevenImpl'
require './kata/Implementation/BrylAndrii/SixImpl'
require './kata/Implementation/BrylAndrii/FiveImpl'

module BrylAndriiKata
  include BrylAndriiEightImpl
  include BrylAndriiSevenImpl
  include BrylAndriiSixImpl
  include BrylAndriiFiveImpl
end
