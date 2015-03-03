require './deck.rb'

class Player
	def initialize name
		@name = name
		@deck = Deck.new
	end

	def name
		@name
	end

	def player_deck
		@deck.deck
	end

	def player_score
		@deck.score
	end

	def new_card
		@deck.new_card
	end
end

class Dealer < Player
end