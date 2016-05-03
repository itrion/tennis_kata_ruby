require_relative '../lib/tennis_game'

RSpec.describe 'Tennis Score' do
	it 'is love - love when a new game starts' do
		expect(TennisGame.new.score).to eq 'love - love'
	end
end