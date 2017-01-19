# 1. Write a program that asks for a score (an integer), and assigns a letter grade based on the score.

puts "What number score did you get on the test?"

score = gets.chomp.to_i

if score > 100
	puts "Wait a second...there wasn't any extra credit..."
elsif score <= 100 && score >= 90
	puts "That's an A!"
elsif score <= 89 && score >= 80
	puts "That's a B!"
elsif score <= 79 && score >= 70
	puts "That's a C!"
elsif score <= 69 && score >= 60
	puts "That's a D!"
else
	puts "That's an F! That's not good."
end

# You could also use ranges and the if/elsif statements like:
# elsif (90..100).include?(score)
# Or you could use the .between?(x,y) method with if/elsif...
# elsif score.between?(90,100)

case score
	when 90..100
		puts "That's an A!"
	when 80..89
		puts "That's a B!"
	when 70..79
		puts "That's a C!"
	when 60..69
		puts "That's a D!"
	when 0..50
		puts "That an F! That's not good."
	else
		puts "Wait a second...there wasn't any extra credit..."
end