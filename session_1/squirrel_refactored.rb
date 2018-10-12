class Squirrel

	attr_reader :hunger, :energy, :mood, :food

	def initialize (hunger, energy, mood, food, number_of_nut_caches)
		@hunger = hunger
		@energy = energy
		@mood = mood
		@food = FoodSource.new(food, number_of_nut_caches)
	end

	def find_nuts()
		number_of_nuts = rand(1...10)
		FoodSource.food += number_of_nuts
	end

	def eat_nut()
		decrease(hunger)
		decrease(FoodSource.food)
	end

	def find_hiding_place()
		increase(FoodSource.number_of_nut_caches)
	end

	def hibernate()
		increase(energy)
		increase(hunger)
	end

	def play()
		decrease(energy)
		increase(mood)
	end

	def increase(param)
		param ++
	end

	def decrease(param)
		param --
	end

	FoodSource = Struct.new(:food, :number_of_nut_caches)

	def calculate_food_storage()
		FoodSource.food / FoodSource.number_of_nut_caches
	end
end




