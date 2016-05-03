require_relative '../lib/tennis_game'

RSpec.describe 'Tennis Score' do
	it 'is love - love when a new game starts' do
		expect(TennisGame.new.score).to eq 'love - love'
	end

	it 'is love - 15 when the player_2 wins a point' do
		game = TennisGame.new
		game.add_point_to 'player_2'
		expect(game.score).to eq 'love - 15'
	end

	it 'is love - 30 when the player_2 wins two points in a row' do
		game = TennisGame.new

		game.add_point_to 'player_2'
		game.add_point_to 'player_2'

		expect(game.score).to eq 'love - 30'
	end
end