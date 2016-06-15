require 'pry'
class Turn
	attr_accessor :player, :cpu, :board, :player_icon, :cpu_icon, :location, :moves, :winning
    
    def run(player, cpu, board)
      @board = board
      @player = player
      @cpu = cpu
      player_turn(@player, @board)

    end

    def move(board, location, icon)
    	@board = board
    	@location = location
     	@board.positions[@location] = icon   
    end

    def position_taken?(board, location)
      @board = board
      @location = location
      @board.positions[@location] != " " && @board.positions[@location] != ""
    end
    
    def valid_move?(board, location)
      @board = board
      @location = location
      @location.between?(0,8) && !position_taken?(@board, @location)
    end

    def player_turn(player, board)
      player = @player
      board = @board
      puts "Please enter 1-9:"
      input = gets.strip
      @location = input.to_i-1
      if valid_move?(@board, @location)
        move(@board, @location, @player.icon)
        @player.moves << @location
        @board.display_board

       
        cpu_turn(@cpu, @board)
      
      else
        puts "Please enter valid move"
        player_turn(@player, @board)
      end
  	end
  	
  	def cpu_turn(player, board)
      player = @cpu
      @board = board
  		input = rand(0..8)
  		@location = input
  		if valid_move?(@board, @location)
        move(@board, @location, @cpu.icon)
        @cpu.moves << @location
        @board.display_board
        player_turn(@player, @board)
       

      
      else
        cpu_turn(@cpu, @board)
      end
    end
    
   #  def turn_count(board)
  	# 	counter = 0
  	# 	@board = board
  	# 	@board.positions.each do |space|
	  #   	if space != " "
	  #     	counter += 1
	  #   	end 
	  #   end
   #    counter
  	# end

	# def current_turn(board)
 #      @board = board
 #      turn_count(@board)
	#   	if turn_count(@board) % 2 == 0
	#     	player_turn(@player, @board)
	#   	else
	#   		cpu_turn(@board)
	#   	end
	# end

end