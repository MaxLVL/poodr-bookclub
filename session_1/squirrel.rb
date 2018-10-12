class Squirrel
	attr_reader :colour, :hunger, :energy, :mood, :food, :number_of_nut_caches	
	def initialize (colour, hunger, energy, mood, food)
		@colour = colour
		@hunger = hunger
		@energy = energy
		@mood = mood
		@food = food
		@number_of_nut_caches = number_of_nut_caches 
	end

	def find_nuts()
		number_of_nuts = rand(1...10)
		food += number_of_nuts 
		mood ++
	end

	def eat_nut()
		hunger --	
		food --
	end

	def find_hiding_place()
		number_of_nut_caches ++
	end

	def hibernate()
		energy ++
		hunger ++
	end

	def play()
		energy --
		mood ++
	end

	def calculate_food_storage()
		food / number_of_nut_caches
	end
end


