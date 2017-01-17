# puts "Which do you prefer? Dog or Cat?"
puts "What is your favorite animal?"

animal = gets.chomp.downcase

# if animal == "dog"
# 	puts "Woof!"
# elsif animal == "cat"
# 	puts "Meow!"
# elsif animal == "horse"
# 	puts "Neigh!"
# elsif animal == "snake"
# 	puts "Hiss!"
# elsif animal == "lion"
# 	puts "Roar!"
# else
# 	puts "Grr?"
# end

case animal
	when "dog" 
		puts "Woof!"
	when "cat"
		puts "Meow!"
	when "horse"
		puts "Neigh!"
	when "snake"
		puts "Hiss!"
	when "lion"
		puts "Roar!"
	else
		puts "Grr?"
end
