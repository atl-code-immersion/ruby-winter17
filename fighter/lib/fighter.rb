class Fighter

	attr_accessor :name, :health, :power

	def initialize(name:,health:,power:)
		@name = name
		@health = health
		@power = power
	end

end