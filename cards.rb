class Cards
	def initialize
		@cards = ['a 1', 'a 2', 'a 3', 'a 4', 'a 5', 'a 6', 'a 7', 'an 8', 'a 9', 'a 10', 'a jack', 'a queen', 'a king', 'an ace']
		@points = {'a 1'=>1, 'a 2'=>2, 'a 3'=>3, 'a 4'=>4, 'a 5'=>5, 'a 6'=>6, 'a 7'=>7, 'an 8'=>8, 'a 9'=>9, 'a 10'=>10, 'a jack'=>10, 'a queen'=>10, 'a king'=>10, 'an ace'=>11}
		@card = @cards[rand(0..13)]
	end

	def new_card
		@card
	end
end