require './player.rb'

@player = Player.new 'melle'

puts @player.name

puts @player.player_deck

puts @player.player_score

puts 'another card?'

if gets.chomp == 'yes'
	@player.new_card
end

puts @player.player_deck

puts @player.player_score