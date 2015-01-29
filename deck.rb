class Deck
	def initialize card
		@pick_card = card
		@cards = ['a 1', 'a 2', 'a 3', 'a 4', 'a 5', 'a 6', 'a 7', 'a 8', 'a 9', 'a 10', 'a jack', 'a queen', 'a king', 'an ace']
		@points = {'a 1'=>1, 'a 2'=>2, 'a 3'=>3, 'a 4'=>4, 'a 5'=>5, 'a 6'=>6, 'a 7'=>7, 'a 8'=>8, 'a 9'=>9, 'a 10'=>10, 'a jack'=>10, 'a queen'=>10, 'a king'=>10, 'an ace'=>11}
	end

	def punten
		@points[@cards[@pick_card]]
	end

	def kaarten
		@cards[@pick_card]
	end
end