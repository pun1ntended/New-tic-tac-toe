class Player
	@@player_profiles = []
	attr_accessor :name, :player_icon, :cpu, :cpu_icon
	def initialize(name, icon)
		@name = name
		@player_icon = icon
		@wins = 0
		@losses = 0
		@draws = 0
		@moves = []
		@@player_profiles << self
		
	end
	
	def self.all
		@@player_profiles
	end 
	
	def stats
		@stats = [:W => @wins,:L => @losses,:D => @draws]
		puts stats
	end
	
	def win
		@wins += 1
	end
	
	def lose
		@losses +=1
	end
	
	def draw
		@draws +=1
	end

	def moves
		@moves
	end

end