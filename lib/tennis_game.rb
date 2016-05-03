class TennisGame
  def initialize
		@score = 'love - love'	
  end

	def score
		@score
	end
	
	def add_point_to player
     @score = 'love - 15'
	end
end