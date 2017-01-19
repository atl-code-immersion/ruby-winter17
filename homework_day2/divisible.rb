# 2. Create a program that takes two numbers from the user and find out if the first is divisible by the second. If not divisible, let user know what the remainder is.

print "Please give me a number: "
num1 = gets.chomp.to_i

print "And another, please: "
num2 = gets.chomp.to_i

if num1 > num2
	if num1%num2 == 0
		puts "#{num1} is divisible by #{num2}! Hooray!"
	else
		puts "#{num1} is not divisible by #{num2}. The remainder is #{num1%num2}."
	end
else
	if num2%num1 == 0
		puts "#{num2} is divisible by #{num1}! Hooray!"
	else
		puts "#{num2} is not divisible by #{num1}. The remainder is #{num2%num1}."
	end
end