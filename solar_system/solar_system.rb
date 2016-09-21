class Planet 
	attr_accessor :name_planet, :description, :population
	$count_of_planets = 0
	$all_planets_name = []
	$all_planets= []
	def initialize(	name_planet, description, population)
		@name_planet = name_planet
		@description = description
		@population = population
		$all_planets_name << self.name_planet
		$count_of_planets += 1
		$all_planets << self
	end
end




class SolarSystem
	attr_accessor :name
	def initialize(name = "Milky Way")
		@name = name
	end

	def show_planet
		$all_planets_name.join(", ")
	end

	def count
		$count_of_planets
	end

	def select_planet
		if $all_planets.each { |i| i.class.ancestors.include?(Planet)}
			true
		else
			false
		end
	end
	def super_nova
		$all_planets.clear
		$all_planets_name.clear
	end
end