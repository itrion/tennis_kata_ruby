require_relative '../lib/tennis_game'

RSpec.describe 'Tennis Score' do
	context 'Given a new game' do
		let(:game) { TennisGame.new }

		it 'is love - love when a new game starts' do
			expect(game.score).to eq 'love - love'
		end

		it 'is love - 15 when the player_2 wins a point' do
			add_to player: 'player_2', points: 1
			
			expect(game.score).to eq 'love - 15'
		end

		it 'is love - 30 when the player_2 wins two points in a row' do
			add_to player: 'player_2', points: 2

			expect(game.score).to eq 'love - 30'
		end

		it 'is 40 - love when the player_1 wins three points in a row' do
			add_to player: 'player_1', points: 3

			expect(game.score).to eq '40 - love'
		end

		def add_to config
			points = config[:points]
			player = config[:player]
			points.times { game.add_point_to player }
		end
	end
end