class Deck
	def initialize card
		@pick_card = card
		@cards = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'boer', 'vrouw', 'koning', 'aas']
		@points = {'1'=>1, '2'=>2, '3'=>3, '4'=>4, '5'=>5, '6'=>6, '7'=>7, '8'=>8, '9'=>9, '10'=>10, 'boer'=>10, 'vrouw'=>10, 'koning'=>10, 'aas'=>11}
	end

	def punten
		@points[@cards[@pick_card]]
	end

	def kaarten
		@cards[@pick_card]
	end
end