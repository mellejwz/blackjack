require './player.rb'

def test
	@player = Player.new 'melle'
	start_game
end

def start_game
	system('clear')
	system('cls')
	puts @player.name + ':'
	puts @player.player_deck
	puts @player.player_score
	puts

	if @player.player_score == 21
		puts 'yeaaah!'
	else add_cards
	end
end

def add_cards
	if @player.player_score < 21
		puts 'another card' + ' ' + @player.name + '?'

		if gets.chomp == 'yes'
			@player.new_card
			score
		end
	else puts 'test'
	end
end

def score
	system('clear')
	system('cls')
	puts
	puts 'You\'ve now got:'
	puts @player.player_deck
	puts @player.player_score

	puts
	add_cards
end

test