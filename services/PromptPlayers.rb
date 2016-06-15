class PromptPlayers
	attr_accessor :name, :player_icon, :cpu, :cpu_icon, :player, :player_name
	def run
		set_name
		set_icon
		@player = Player.new(@name,@player_icon)
		@cpu = Player.new("CPU", @cpu_icon)

	end
	def set_icon
		puts "Select an icon (X/O)"
		@player_icon = gets.strip
		if @player_icon == "X".downcase
			@player_icon = "X".downcase
			@cpu_icon = "O".downcase
		elsif @player_icon == "O".downcase
			@player_icon = "O".downcase
			@cpu_icon = "X".downcase
		else
			puts "Invalid choice, please choose again"
			set_icon
		end

	end
	def set_name
		puts "Enter name"
		@name = gets.strip
	end
end