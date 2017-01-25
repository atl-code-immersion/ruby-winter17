require '../lib/fighter'

RSpec.describe Fighter do

	let(:fighter1){Fighter.new(name: "Ryu", health: 200, power: 50)}
	
	it '.new creates a new fighter' do
		expect(fighter1).to be_an_instance_of Fighter
	end

	it '.name returns a fighter\'s name' do
		expect(fighter1.name).to eql("Ryu")
	end

	it '.health returns a fighter\'s name' do
		expect(fighter1.health).to eql(200)
	end

	it '.power returns a fighter\'s name' do
		expect(fighter1.power).to eql(50)
	end

end