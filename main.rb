#by Melle Zwerver
require './player.rb'

#create an empty playerlist
def playerlist
	@players = []
	puts 'Enter player names one by one, press enter without a name to continue'
	names
end

#ask for playernames (with recursion) and put them in the playerlist, and then ask for the dealer's name and save it
def names
	name = gets.chomp
	if name != ''
		@players.push Player.new name
		names
	else
		puts 'Enter the dealer\'s name'
		@dealer = Dealer.new gets.chomp
		initial_cards
	end
end

#add a few players to the playerlist and set the dealer's name for quick testing
def test
	@players = []
	@players.push Player.new 'Melle'
	@players.push Player.new 'Sven'
	@players.push Player.new 'Papin'
	@dealer = Dealer.new 'Niels'
	initial_cards
end

#give each player and the dealer a pair of cards and show the initial score
def initial_cards
	system('cls')
	system('clear')

	puts 'Dealer ' + @dealer.name + ':'
	puts 'The dealer has ' + @dealer.cards
	puts 'which add up to ' + @dealer.score.to_s + ' points'
	puts
	puts 'Players:'

	@players.each_with_index do |x, player|
		puts
		puts @players[player].name + ':'
		puts 'You have ' + @players[player].cards
		puts 'which add up to ' + @players[player].score.to_s + ' points'
	end

	another_card	
end

#after getting 2 cards, ask if the players want another card
def another_card
	@players.each_with_index do |x, player|
		while @players[player].score<21
			puts
			puts 'you have ' + @players[player].score.to_s + ' points ' + @players[player].name + ', do you want another card?'
			break if gets.chomp == 'no'
			puts
			puts @players[player].new_card
			puts 'You now have ' + @players[player].score.to_s + ' points'
			puts @players[player].score
		end
	end
end

#uncomment 'playerlist' to enter the player's and the dealer's names, use 'test' to automagically add 3 players and the dealer

# playerlist
test
