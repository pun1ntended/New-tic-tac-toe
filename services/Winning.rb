class Winning

  attr_accessor :positions, :cpu_icon, :play_icon, :board, :player, :cpu, :winner

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

  def win_conditon(player)
    player = @player
    WIN_COMBINATIONS.select do |winning_combo|
      winning_combo.all? do |winning_position| 
        player.moves.include?(winning_position)
      end
    end 
  end

  def check_victory(player)
    player = @player
    if win_conditon(player) != []
      puts "humans > machines lol"
    end
  end

  def full?(board)
    board = @board
    board.all? do |e|
      e == 'X' || e == 'O'
    end
  end

  def draw?(board)
    board = @board
    !check_victory(@board) && full?(@board)
  end

  def over?(board)
    board = @board
    win_method?(board) || draw?(board)
  end

  # def winner(board)
  #   board = @board
  #   winner = won?(@board)
  #   if winner
  #     return board[winner[0]]
  #   end
  # end

end # <= closes class