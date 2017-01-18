# 2. Write a program that asks for your mood for the day, then returns the length of the string. Then return the string with 'meow' prepended to it.

puts "How do you feel today?"

mood = gets.chomp

puts "Your mood is #{mood.length} letters long. Interesting..."

puts "meow" + mood
# or:
puts "meow#{mood}"