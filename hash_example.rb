puts "Tell us about yourself..."

profile = {}

puts "What's your name?"
profile["Name"] = gets.chomp

puts "What's your age?"
profile["Age"] = gets.chomp

puts "What city did you grow up in?"
profile["Hometown"] = gets.chomp

puts "What's your favorite food?"
profile["Favorite Food"] = gets.chomp

# profile = {"Name"=>name, "Age"=>age, "Hometown"=>hometown, "Favorite Food"=>fav_food}

profile.each do |key, value|
	case key
		when "Name"
			puts "My name is #{value}."
		when "Age"
			puts "I am #{value}-years-old." 
		when "Hometown"
			puts "I grew up in #{value}."
		else
			puts "My favorite food is #{value}."
	end
end


