class Winning

  attr_accessor :positions, :cpu_icon, :play_icon, :board

  WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]
    # => Move this to winning class
  def win_condition
    WIN_COMBINATIONS.each do |winning_combo|
      if win_method?
      else
        turn_count(@board)
        current_turn(@board) 
      end
    end
  end

  def win_method?
    if winning_combo.all?{ |win_position| @player_moves.include?(win_position)} == true
      @current_player.win
      puts "humans > machines lol"
      puts @current_player.stats
      break
    end
  end

  def full?(board)
    board = @board
    board.all? do |e|
      e == 'X' || e == 'O'
    end
  end
​
  def draw?(board)
    board = @board
    !win_method?(board) && full?(board)
  end
​
  def over?(board)
    board = @board
    win_method?(board) || draw?(board)
  end
​
  def winner(board)
    board = @board
    winner = won?(board)
    if winner
      return board[winner[0]]
    end
  end

end # <= closes class