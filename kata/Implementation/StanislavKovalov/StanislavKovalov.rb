# frozen_string_literal: true

require './kata/Implementation/StanislavKovalov/EightImpl'
require './kata/Implementation/StanislavKovalov/SevenImpl'
require './kata/Implementation/StanislavKovalov/SixImpl'
require './kata/Implementation/StanislavKovalov/FiveImpl'

module StanislavKovalovKata
  include StanislavKovalovEightImpl
  include StanislavKovalovSevenImpl
  include StanislavKovalovSixImpl
  include StanislavKovalovFiveImpl
end
