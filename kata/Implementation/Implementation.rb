# frozen_string_literal: true

require './kata/Implementation/FedykSvyatoslav/FedykSvyatoslav'
require './kata/Implementation/KhudoBohdan/KhudoBohdan'
require './kata/Implementation/KmytiukNatalyia/KmytiukNatalyia'
require './kata/Implementation/KovalyovVladyslav/KovalyovVladyslav'
require './kata/Implementation/KulykMariia/KulykMariia'
# require './kata/Implementation/LypskyiOleksandr/LypskyiOleksandr.rb'
require './kata/Implementation/OmetiukhSofiia/OmetiukhSofiia'
require './kata/Implementation/StanislavKovalov/StanislavKovalov'

module Implementation
  module FedykSvyatoslav
    include FedykSvyatoslavKata
  end

  module KhudoBohdan
    include KhudoBohdanKata
  end

  module KmytiukNatalyia
    include KmytiukNatalyiaKata
  end

  module KovalyovVladyslav
    include KovalyovVladyslavKata
  end

  module KulykMariia
    include KulykMariiaKata
  end

  module LypskyiOleksandr
    # include LypskyiOleksandrKata
  end

  module OmetiukhSofiia
    include OmetiukhSofiiaKata
  end

  module StanislavKovalov
    include StanislavKovalovKata
  end
end
