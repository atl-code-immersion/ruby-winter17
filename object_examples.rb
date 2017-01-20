class Person

	def initialize(name,age,location)
		@name = name
		@age = age
		@location = location
	end

	def name
		@name
	end

	def age
		@age
	end

	def location
		@location
	end

end

class Pet

	attr_accessor :name, :age, :species

	def initialize(name,age,species)
		@name = name
		@age = age
		@species = species
	end

end

class Vehicle

	attr_accessor :make, :model, :year, :color, :quantity

	def initialize(make, model, year, color, quantity)
		@make = make
		@model = model
		@year = year
		@color = color
		@quantity = quantity
	end

	def inventory_change
		puts "How many more Focuses came in today?"
		num = gets.chomp.to_i

		@quantity += num
	end

end

car1 = Vehicle.new("Ford","Focus","2015","Blue",4)

car1.inventory_change

puts car1.quantity

# profile = Person.new("Aaron",36,"Atlanta")
# pet1 = Pet.new("Fluffy",9,"Cat")

# puts "#{profile.name} is #{profile.age}-years-old and lives in #{profile.location}."

# puts "#{pet1.name} is a #{pet1.species} and is #{pet1.age}-years-old."

# pet1.species = "Dog"

# puts "#{pet1.name} is a #{pet1.species} and is #{pet1.age}-years-old."

