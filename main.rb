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
	if @player.player_score <= 21
		puts 'another card?'

		if gets.chomp == 'yes'
			@player.new_card
			score
		end
	else puts 'test'
	end
end

def score
	puts
	puts @player.name + ','
	puts 'You\'ve now got:'
	puts @player.player_deck
	puts @player.player_score
	puts
	add_cards
end

test