class AppleTree
	attr_accessor :heigth, :age, :apples
	def initialize(heigth)
		@heigth = heigth
		@age = 11
		@apples = 0
	end
	def grow_apples
		if @age.between?(3, 10)
			@apples = rand(10..100)
		else
			@apples = 0
		end
	end

	def year_gone_by
		@age += 1
	end

	def pick_apples
		@apples = 0
	end
end

# x = AppleTree.new(90)
# x.growe_apples
