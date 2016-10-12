require_relative "mammal"
class Dragon < Mammal
	def initialize
		super
		@health += 20
		self
	end
	def fly(num =1)
		num.times{@health -= 10}
		self
	end
	def attack_town(num = 1)
		num.times{@health -= 50}
		self
	end
	def eat_humans(num = 1)
		num.times{@health += 20}
		self
	end
	def display_health
		puts "This is a dragon"
		super
		self
	end
end
spot = Dragon.new
spot.display_health
spot.attack_town(3).eat_humans(2).fly(2).display_health
