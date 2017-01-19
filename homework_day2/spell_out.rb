# 3. Create a program that takes a name (or any word, really), and spells it out, one letter at a time (vertically). Then have the name/word spelled out in one line (horizontally), but with commas between each letter (but not after the last letter).

puts "What's your name?"

name = gets.chomp

# first we'll spell out vertically:

count = 0

until count == name.length
	puts name[count].upcase
	count += 1
end

# another option:
# name.each_char do |x|
# 	puts x
# end

# now for the horizontal spell-out:

count = 0

while count < name.length
	if count < name.length - 1
		print "#{name[count].upcase}, "
	else
		puts "#{name[count].upcase}"
	end
	count += 1
end

# another option:
# puts name.upcase.split(//).join(", ")


