require './cards.rb'

class Deck
	def initialize
		@cards = []
		@points = []
		for i in 0...2 do
			@card = Cards.new
			@cards.push @card.card
			@points.push @card.score
		end
	end

	def deck
		@deck = @cards.join(' and ')
		@deck
	end

	def score
		score = 0
		for x in 0...@cards.length do
			score += @points[x]
		end
		score
	end

	def new_card
		@cards.push @card.card
		@points.push @card.score
	end
end