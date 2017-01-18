# 4. Write a program that asks for a sentence. Then ask for their favorite word in that sentence. Then tell them what index that word starts at. See the Ruby Docs page for String for a handy method to use. 

puts "Give me a sentence, please..."

sen = gets.chomp

puts "What's your favorite word in that sentence?"

fave = gets.chomp

puts "Oh, that one starts at index #{sen.index(fave)}!"