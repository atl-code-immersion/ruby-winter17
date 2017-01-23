class Person
    attr_accessor :name, :age

    def initialize(name, age)
    	@name = name
    	@age = age
    end
end

all_the_people = []
completion = ""

puts "Enter personnel data. Type 'done' when finished."
while completion != "done"
    print "Name: "
    name = gets.chomp
    if name.downcase == "done"
    	completion = "done"
    else
	    print "Age: "
	    age = gets.chomp
	    profile = Person.new(name, age)
	    all_the_people.push(profile)
	    puts "Profile saved."
	  end
end

puts "Personnel entry complete!"

puts all_the_people