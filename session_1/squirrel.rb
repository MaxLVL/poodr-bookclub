class Squirrel
	attr_reader :colour, :hunger, :energy, :mood, :food	
	def initialize (colour, hunger, energy, mood, food)
		@colour = colour
		@hunger = hunger
		@energy = energy
		@mood = mood
		@food = food
	end

	def find_nut()
		food ++
		mood ++
	end

	def eat_nut()
		hunger --	
		food --
	end

	def hide_nut()
	end

	def hibernate()
		energy ++
		hunger ++
	end

	def play()
		energy --
		mood ++
	end
end


