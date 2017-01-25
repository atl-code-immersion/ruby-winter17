def hola(name)
	"Hello #{name}"
end

RSpec.describe "#hola" do
	it 'greets a person with their name' do
		expect(hola('Aaron')).to eql('Hello Aaron')
	end
end