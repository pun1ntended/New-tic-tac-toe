# runner folder

require_relative '../models/Board.rb'
require_relative '../models/Player.rb'
require_relative 'GameFlow.rb'
require_relative 'PromptPlayers.rb'
require_relative 'Winning.rb'
require_relative 'Turn.rb'
require 'pry'
class ActualGame
	attr_accessor :player, :cpu, :board, :player_icon, :cpu_icon, :location, :moves, :icon
	def run
		prompt = PromptPlayers.new
		prompt.run
		cpu = prompt.cpu
		player = prompt.player
		board = Board.new
		Turn.new.run(player, cpu, board)
	end
end

ActualGame.new.run
