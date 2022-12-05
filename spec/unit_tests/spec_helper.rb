require 'simplecov'
SimpleCov.start do
  add_filter ["/spec/",
              "/utils/",
              "main.rb",
              "kata/Eight.rb",
              "kata/Seven.rb",
              "kata/Six.rb",
              "kata/Five.rb",
              "kata/Implementation/Implementation.rb",
              "kata/Implementation/BrylAndrii/BrylAndrii.rb",
              "kata/Implementation/FedykSvyatoslav/FedykSvyatoslav.rb",
              "kata/Implementation/KhudoBohdan/KhudoBohdan.rb",
              "kata/Implementation/KmytiukNatalyia/KmytiukNatalyia.rb",
              "kata/Implementation/KovalyovVladyslav/KovalyovVladyslav.rb",
              "kata/Implementation/KulykMariia/KulykMariia.rb",
              "kata/Implementation/LypskyiOleksandr/LypskyiOleksandr.rb",
              "kata/Implementation/OmetiukhSofiia/OmetiukhSofiia.rb",
              "kata/Implementation/StanislavKovalov/StanislavKovalov.rb"
             ]
end
