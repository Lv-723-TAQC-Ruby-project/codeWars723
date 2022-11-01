puts "Enter the length, width and height of cuboid in this order with spaces between numbers"
a = gets.to_s.split
length = a[0].to_f
width = a[1].to_f
height = a[2].to_f

def get_volume_of_cuboid(length, width, height)
  (length * width * height)
end

#puts get_volume_of_cuboid(length, width, height)