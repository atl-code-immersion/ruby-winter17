=begin

1. Create a program that will take two numbers and then gives the user a choice of what kind of arthimetic they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. This time you really gotta use methods!	

=end

def add(num1,num2)
	puts "#{num1} + #{num2} = #{num1 + num2}"
end

def subtract(num1,num2)
	puts "#{num1} - #{num2} = #{num1 - num2}"
end

def multiply(num1,num2)
	puts "#{num1} * #{num2} = #{num1 * num2}"
end

def divide(num1,num2)
	puts "#{num1} / #{num2} = #{num1/num2}"
end

def menu(num1,num2)
	puts "Now what would you like done with #{num1} & #{num2}?"
	puts "------------------------"
	puts "1. Add"
	puts "2. Subtract"
	puts "3. Multiply"
	puts "4. Divide"
	puts "5. Exit Program"

	choice = gets.chomp.to_i

	case choice
		when 1
			add(num1,num2)
			menu(num1,num2)
		when 2
			# I don't like negative numbers, so...
			if num1 > num2
				subtract(num1, num2)
			else
				subtract(num2, num1)
			end
			menu(num1,num2)
		when 3
			multiply(num1,num2)
			menu(num1,num2)
		when 4
			# I'm also not a fan of fractions,
			# let's get the bigger number on top...
			if num1 > num2
				divide(num1, num2)
			else
				divide(num2, num1)
			end
			menu(num1,num2)
		when 5
			puts "Okay, whatevs. Later."
		else
			puts "Invalid response. Please choose a valid number selection."
			menu(num1, num2)
	end
end

puts "Let's do some math! First we need some numbers..."
print "Number One: "
num1 = gets.chomp.to_f
print "Number Two: "
num2 = gets.chomp.to_f

menu(num1,num2)