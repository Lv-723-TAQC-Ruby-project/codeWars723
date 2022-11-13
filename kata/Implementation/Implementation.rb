# frozen_string_literal: true

require './kata/Implementation/FedykSvyatoslav/FedykSvyatoslav.rb'
require './kata/Implementation/KhudoBohdan/KhudoBohdan.rb'
require './kata/Implementation/KmytiukNatalyia/KmytiukNatalyia.rb'
require './kata/Implementation/KovalyovVladyslav/KovalyovVladyslav.rb'
require './kata/Implementation/KulykMariia/KulykMariia.rb'
#require './kata/Implementation/LypskyiOleksandr/LypskyiOleksandr.rb'
require './kata/Implementation/OmetiukhSofiia/OmetiukhSofiia.rb'

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
    #include LypskyiOleksandrKata
  end

  module OmetiukhSofiia
    include OmetiukhSofiiaKata
  end

  module StanislavKovalov
  end
end
