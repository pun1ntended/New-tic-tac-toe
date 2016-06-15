class Player
	@@player_profiles = []
	attr_accessor :name, :player_icon, :cpu, :cpu_icon, :moves
	def initialize(name, icon)
		@name = name
		@icon = icon
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

	def moves
		@moves
	end

	def icon
		@icon
	end

	def name
		@name
	end

end