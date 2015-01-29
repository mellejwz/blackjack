require './Player'

class Dealer < Player
	def wants_card
		score < 17
	end
end