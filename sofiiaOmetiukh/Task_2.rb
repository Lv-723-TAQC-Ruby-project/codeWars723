#Volume of cuboid

puts "Enter the value of sides:"
a = gets.to_s.split
length = a[0].to_i
width = a[1].to_i
height = a[2].to_i

def get_volume_of_cuboid(length, width, height)
  length*width*height
end

puts get_volume_of_cuboid(length, width, height)