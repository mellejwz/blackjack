require './cards.rb'

class Deck
	def initialize
		@cards = []
		for 0...2 do
			@cards.push Cards.new.new_card
		end
	end

	def cards
		@cards
	end
end