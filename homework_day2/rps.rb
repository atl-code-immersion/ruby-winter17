# 6. Write a Rock, Paper, Scissors game where a user can play against the computer.

# The user should enter rock, paper, or scissors (remember to account for differences in capitalization!), and the computer will choose a random value.
# After each turn display the score (user wins vs. computer wins).
# Whichever player reaches five wins first is the winner!

puts "Let's play a game..."
puts "Rock, Paper or Scissors?"
choice = gets.chomp.downcase

hands = %w(rock paper scissors)

comp_choice = hands.sample

# random = rand()
# if (0..0.33).include?(random)
# 	comp_choice == "rock"
# elsif (0.33..0.66).include?(random)
# 	comp_choice == "paper"
# else
# 	comp_choice == "scissors"
# end

if choice == comp_choice
	puts "It's a tie!"
elsif choice == "rock" && comp_choice == "paper"
	puts "Computer wins!"
elsif choice == "rock" && comp_choice == "scissors"
	puts "You win!"
elsif choice == "paper" && comp_choice == "rock"
	puts "You win!"
elsif choice == "paper" && comp_choice == "scissors"
	puts "Computer wins!"
elsif choice == "scissors" && comp_choice == "paper"
	puts "You win!"
else
	puts "Computer wins!"
end