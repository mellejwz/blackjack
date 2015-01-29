require './deck.rb'
class Cards
	def initialize random
		@deck = Deck.new(random)
	end

	def punten
		@deck.punten
	end

	def cardname
		@deck.kaarten
	end
end