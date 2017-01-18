# 5. Write a program that asks for the cost of your dinner at a restaurant. The program will return back to you a tip of 18% of your meal cost. Make sure the tip is always returned with two decimal places.

puts "How much did dinner cost?"

total = gets.chomp.to_f

tip = total * 0.18

puts "Okay, the tip should be $#{tip.round(2)}"

# .round() may leave off a zero in the hundreth place.
# you can use this formatting instead:

puts "Okay, the tip should be $#{'%0.2f'%tip}"
