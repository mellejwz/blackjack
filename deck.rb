require './cards.rb'

class Deck
	def initialize
		@cards = []
		@score = []
		for i in 0...2 do
			@test = Cards.new
			@cards.push @test.card
			@score.push @test.score
		end
	end

	def deck
		@cards.join(' and ')
	end

	def score
		@score.join(' ')
	end

	def new_card
		@cards.push Cards.new.card
	end
end