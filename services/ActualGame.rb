require_relative '../models/Board.rb'
require_relative '../models/Player.rb'
require_relative 'GameFlow.rb'
require_relative 'PromptPlayers.rb'
require_relative 'Winning.rb'
require_relative 'Turn.rb'
require 'pry'
competitors = PromptPlayers.new.run
board = Board.new
Turn.new.run(competitors, board)
