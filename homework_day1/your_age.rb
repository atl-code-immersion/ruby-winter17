# 6. Write a program that accpets your age. Convert your age to how old you are in seconds. Convert your age to how old you would be on the 8 different planets (hint: search planet rotation conversion rates). Output what your age in years would be on each planet.

print "So how old are you? "
age = gets.chomp.to_i

puts "Oh, dang, so that means you're #{age * 31536000} seconds old!"

puts "And then..."
puts "Your age on Mercury is #{((age * 365)/87.96).round(2)}"
puts "Your age on Venus is #{((age * 365)/224.68).round(2)}"
puts "Your age on Mars is #{((age * 365)/686.98).round(2)}"
puts "Your age on Jupiter is #{(age * 11.862).round(2)}"
puts "Your age on Saturn is #{(age * 29.456).round(2)}"
puts "Your age on Uranus is #{(age * 84.07).round(2)}"
puts "Your age on Neptune is #{(age * 164.81).round(2)}"
puts "Your age on Pluto is #{(age * 247.7).round(2)}"


