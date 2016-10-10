require_relative "mammal"

class Dragon < Mammal
	def initialize
		@health=170 #reinitialize to override the health score from mammal (parent) class
	end

	def fly
		@health -= 10
		return self
	end
	def attack_town
		@health -= 50
		return self
	end
	def eat_humans
		@health += 20
		return self
	end
	def display_health
		puts "This is a dragon!"
		super #call super to override the parent function
	end
end

puts Dragon.new.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
