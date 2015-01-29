require './cards.rb'
class Player
	def initialize name
		@name = name
		init_cards
	end

	def init_cards
		@cards = []
		@punten = []
		for i in 0...2 do
			random = rand(0..13)
			@cards.push Cards.new(random).cardname
			@punten.push Cards.new(random).punten
		end

		@total = 0
		for z in 0...@cards.length do
			@total += @punten[z]
		end
	end

	def name
		@name
	end

	def cards
		'een ' + @cards.join(' en een ')
	end

	def new_card
		random = rand(0..13)
		@cards.push Cards.new(random).cardname
		@punten.push Cards.new(random).punten
		@total += @punten.pop
		'een ' + @cards.join(' en een ')
	end

	def score
		@total
	end
end

class Dealer < Player
	def name
		@name
	end
end