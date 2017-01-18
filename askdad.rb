puts "Can we go to Mt. Splashmore?"
ans = gets.chomp.downcase

until ans == "yes" || ans == "yep" || ans == "sure thing"
	puts "Can we go to Mt. Splashmore?"
	ans = gets.chomp.downcase
end

puts "Yay! You're the best!"