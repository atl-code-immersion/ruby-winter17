animals = %w(cat dog rhinoceros flamingo kangaroo)

fave = "flamingo"

presence = false

animals.each do |animal|
	if animal == fave
		presence = true
	end
end

if !presence
	puts "No, I don't care for those."
else
	puts "Oh, I love #{fave}!"
end