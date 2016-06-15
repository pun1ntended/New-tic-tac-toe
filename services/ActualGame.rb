require_relative '../models/Board.rb'
require_relative '../models/Player.rb'
require_relative 'GameFlow.rb'
require_relative 'PromptPlayers.'
require_relative 'Winning.rb'
require_relative 'Turn.rb'

PromptPlayers.prompt
Board.new
GameFlow.new