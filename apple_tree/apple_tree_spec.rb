require_relative 'apple_tree'
RSpec.describe AppleTree do


	it 'should have heigt and age'do
		tree = AppleTree.new(10)
		expect(tree.heigth).to eq(10)
		expect(tree.age).to eq(11)
	end
	it' should have aplles'do
		tree2 = AppleTree.new(10)
		tree2.grow_apples
		expect(tree2.apples).to eq(0)
	end
	it'should age by one year 'do
		tree3 = AppleTree.new(10)
		tree3.year_gone_by
		expect(tree3.age).to eq(12)
	end

	it'should pick all aplles' do
		tree4 = AppleTree.new(10)
		tree4.grow_apples
		tree4.pick_apples
		expect(tree4.apples).to eq(0)
	end	
end		