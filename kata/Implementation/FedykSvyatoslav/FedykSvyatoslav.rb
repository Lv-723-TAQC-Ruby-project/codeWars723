# frozen_string_literal: true

require './kata/Implementation/FedykSvyatoslav/EightImpl'
require './kata/Implementation/FedykSvyatoslav/SevenImpl'
require './kata/Implementation/FedykSvyatoslav/SixImpl'
require './kata/Implementation/FedykSvyatoslav/FiveImpl'

module FedykSvyatoslavKata
  include FedykSvyatoslavEightImpl
  include FedykSvyatoslavSevenImpl
  include FedykSvyatoslavSixImpl
  include FedykSvyatoslavFiveImpl
end
