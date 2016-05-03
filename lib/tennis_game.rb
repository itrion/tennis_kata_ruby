class TennisGame
	def initialize
		@score = {player_1: 0, player_2: 0}
  end

	def score
		format_points_of(:player_1) + ' - ' + format_points_of(:player_2)
	end
	
	def add_point_to player
		@score[player.to_sym] += 1
	end

	def format_points_of player
		format = 'love', '15', '30', '40'
		format[@score[player]]
	end

	def format points

	end

end