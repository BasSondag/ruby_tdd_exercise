require_relative 'wizard'
require_relative 'samurai'
RSpec.describe Wizard do
	describe'behavior' do
		before do
			@samurai = Samurai.new
			@wizard = Wizard.new
			

		end

		it 'the health and intellingence is ' do
			expect(@wizard.health).to eq(50)
			expect(@wizard.intelligence).to eq(25)
		end

		it 'wizard has a heal method increase healt'do
			expect(@wizard.heal).to eq(60)
		end
		it 'wizard is ancetors of Human'do
			expect(Wizard.ancestors.include?(Human)).to eq(true)
		end
		it 'wizard fireball attack and decrease healt' do
			expect(@wizard.fireball(@samurai)).to eq(170)
		end
	end
end