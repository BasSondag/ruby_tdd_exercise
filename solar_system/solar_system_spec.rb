require_relative 'solar_system'
RSpec.describe Planet do

	it'should have a getter and setter'do
		planet1 = Planet.new("earth", "planet has live", 100000)
		expect(planet1.name_planet).to eq("earth")
		expect(planet1.description).to eq("planet has live") 
		expect(planet1.population).to eq(100000)
	end
end	

require_relative 'solar_system'

RSpec.describe SolarSystem do

	it 'should have a getter'do
		solarsystem = SolarSystem.new
		expect(solarsystem.name).to eq("Milky Way")
	end

	it 'should show all the planets'do
		solarsystem = SolarSystem.new
		planet2 = Planet.new("mars", "redplanet", 0)
		expect(solarsystem.show_planet).to eq("earth, mars")
	end
	it ' counts all the plannets'do
		solarsystem = SolarSystem.new
		expect(solarsystem.count).to eq(2)
	end
	it 'checks if plannets only comme from class Planet' do
		solarsystem = SolarSystem.new
		expect(solarsystem.select_planet).to eq(true)
	end
	it 'destroy all plannets'do
		solarsystem = SolarSystem.new
		expect(solarsystem.super_nova).to eq([])
	end
end
