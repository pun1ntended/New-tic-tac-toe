class Board
  # => @board = Array.new(9, " ")
  attr_reader :positions, :name, :cpu, :player_icon, :cpu_icon
  
  def initialize
    numbered_board
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

    @current_board = @board
  end
  def positions
  	@current_board
  end

  def numbered_board
  	puts " 1 | 2 | 3 "
  	puts "-----------"
  	puts " 4 | 5 | 6 "
  	puts "-----------"
  	puts " 7 | 8 | 9 "
  end
  
  def display_board
  	puts " #{@current_board[0]} | #{@current_board[1]} | #{@current_board[2]} "
  	puts "-----------"
  	puts " #{@current_board[3]} | #{@current_board[4]} | #{@current_board[5]} "
  	puts "-----------"
  	puts " #{@current_board[6]} | #{@current_board[7]} | #{@current_board[8]} "
  end

end