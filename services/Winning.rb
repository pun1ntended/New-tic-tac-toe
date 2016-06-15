class Winning
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

  def won?(board)
    WIN_COMBINATIONS.each do |win_combo|
    position_1 = board[win_combo[0]]
    position_2 = board[win_combo[1]]
    position_3 = board[win_combo[2]]
    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combo
    end
  end


  def full?(board)
    board.all? do |e|
      e == 'X' || e == 'O'
    end
  end
​
  def draw?(board)
    !won?(board) && full?(board)
  end
​
  def over?(board)
    won?(board) || draw?(board)
  end
​
  def winner(board)
    winner = won?(board)
    if winner
      return board[winner[0]]
    end
end
