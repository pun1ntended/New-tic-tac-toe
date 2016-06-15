require_relative '../models/Board.rb'
require_relative '../models/Player.rb'
require_relative 'GameFlow.rb'
require_relative 'PromptPlayers.rb'
require_relative 'Winning.rb'
require_relative 'Turn.rb'
require 'pry'
class ActualGame
	attr_accessor :player, :cpu, :board, :winner
	def run
		winner = Winning.new
		prompt = PromptPlayers.new
		prompt.run
		cpu = prompt.cpu
		player = prompt.player
		board = Board.new
		Turn.new.run(player, cpu, board, winner)
	end
end

ActualGame.new.run
