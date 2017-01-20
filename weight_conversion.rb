# Create a method for converting weight from pounds to kilos.

def pounds_to_kg(lbs)
	kilos = lbs * 0.453592
	return kilos.round(2)
end

puts "What is the weight of that chunk of meat?"

weight = gets.chomp.to_i

puts "Okay, that's #{pounds_to_kg(weight)} kg."
