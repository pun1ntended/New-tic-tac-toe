class PromptPlayers
	attr_accessor :name, :icon, :cpu
	def self.prompt
		set_name
		set_icon
		@player = Player.new(@name_input,@icon_input)
		@cpu = Player.new("CPU", @cpu_icon)

	end
	def self.set_icon
		puts "Select an icon (X/O)"
		@icon_input = gets.strip
		unless @icon_input == "X".downcase || @icon_input == "O".downcase then set_icon
		@icon_input == "X".downcase ? @cpu_icon = "O".downcase : @cpu_icon = "X".downcase

	end
	def self.set_name
		puts "Enter name"
		@name_input = gets.strip
	end
end