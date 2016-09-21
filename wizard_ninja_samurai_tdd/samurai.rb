require_relative "human"


class Samurai < Human
	@@no_of_samurai = 0
	def initialize
		super
		@health = 200
		@@no_of_samurai += 1
	end

	def death_blow(target)
		target.health = 0 
	end
	def meditate
		@health = 200
	end
	def no_of_samurai
		puts "there are %s" % @@no_of_samurai
	end
end	
