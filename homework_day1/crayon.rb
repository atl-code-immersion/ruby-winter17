# 1. Write a program that asks for your favorite Crayola crayon and then takes the string and yells it back in all caps and in reverse.

puts "What is your favorite Crayola crayon color?"

crayon = gets.chomp

puts "#{crayon.reverse.upcase}!?"