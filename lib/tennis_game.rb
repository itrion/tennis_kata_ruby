class TennisGame
	def initialize
		@score = {player_1: 0, player_2: 0}
  end

	def score
		points_of(:player_1) + ' - ' + points_of(:player_2)
	end
	
	def add_point_to player
		@score[player.to_sym] += 15
	end

	def points_of player
		@score[player] == 0 ? 'love' : @score[player].to_s
	end
end