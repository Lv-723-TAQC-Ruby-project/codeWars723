# frozen_string_literal: true

require './kata/Implementation/KmytiukNatalyia/EightImpl'
require './kata/Implementation/KmytiukNatalyia/SevenImpl'
# require './kata/Implementation/KmytiukNatalyia/SixImpl'
require './kata/Implementation/KmytiukNatalyia/FiveImpl'

module KmytiukNatalyiaKata
  include KmytiukNatalyiaEightImpl
  include KmytiukNatalyiaSevenImpl
  # include KmytiukNatalyiaSixImpl
  include KmytiukNatalyiaFiveImpl
end
