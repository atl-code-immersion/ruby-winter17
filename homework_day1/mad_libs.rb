# 7. Create a Mad Libs program with at least 10 inputs and minimum of one each of these: verb, plural noun, adjective, preposition, geographical feature, object, number.

puts "Let's play Mad Libs!"

puts "First we need to collect some words."
puts "So give me a..."

print "Noun: "
noun1 = gets.chomp.downcase

print "Another noun: "
noun2 = gets.chomp.downcase

print "A plural noun: "
pl_noun = gets.chomp.downcase

print "Verb: "
verb1 = gets.chomp.downcase

print "Another Verb: "
verb2 = gets.chomp.downcase

print "Adjective: "
adj1 = gets.chomp.downcase

print "Another Adjective: "
adj2 = gets.chomp.downcase

print "A preposition (on, after, for, etc.): "
prep = gets.chomp.downcase

print "A geographical feature: "
geo = gets.chomp.downcase

print "A number: "
num = gets.chomp.downcase

puts "Okay, that's it. Let's generate a story..."

sleep(3)

puts "There was once a #{noun1} who lived #{prep} a #{geo}. This #{noun1} liked to #{verb1} but was very #{adj1}. It would take the #{noun1} #{num} days to even #{verb2} a #{noun2}. Because of that, only #{adj2} #{pl_noun} would visit."
