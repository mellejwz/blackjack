require './player.rb'

def test
	@player = Player.new 'melle'
	start_game
end

def start_game
	puts @player.name

	puts @player.player_deck

	puts @player.player_score

	add_cards
end

def add_cards
	puts 'another card?'

	if gets.chomp == 'yes'
		@player.new_card
	end

	puts @player.player_deck

	puts @player.player_score
end

test