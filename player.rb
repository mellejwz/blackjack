require './deck.rb'

class Player
	def initialize name
		@name = name
		@deck = Deck.new
	end

	def name
		@name
	end

	def initial_cards
		@deck.cards
	end
end