puts "What's your name?"
name = gets.chomp.downcase.capitalize

while name != "Jacob"
	puts "What's your name?"
	name = gets.chomp.downcase.capitalize
end

puts "I guess that's everyone. Let's start class."