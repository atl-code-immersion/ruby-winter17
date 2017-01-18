# 3. Write a program that takes two numbers from the user and shows the sum, difference, product and quotient of the two numbers.

print "Please give me a number: "
num1 = gets.chomp.to_i

print "Now a second number: "
num2 = gets.chomp.to_i

puts "Okay..."
puts "#{num1} + #{num2} = #{num1+num2}"
puts "#{num1} - #{num2} = #{num1-num2}"
puts "#{num1} * #{num2} = #{num1*num2}"
puts "#{num1} / #{num2} = #{num1/num2}"
