class Turn
	attr_accessor :name, :cpu, :board, :player_icon, :cpu_icon
  
    def move(board, location, icon)
    	board = @board
    	location = @location
     	@board.positions[location] = icon   
    end

    def position_taken?(board, location)
      board = @board
      location = @location
      @board.positions[location] != " " && @board.positions[location] != ""
    end
    
    def valid_move?(board, location)
      board = @board
      location = @location
      location.between?(0,8) && !position_taken?(@board, location)
    end

    def player_turn(board)
      puts "Please enter 1-9:"
      input = gets.strip
      @location = input.to_i-1
      if valid_move?(@board, @location)
        move(@board, @location, @player_icon)
        @moves << @location      
      else
        puts "Please enter valid move"
        player_turn(@board)
      end
  	end
  	
  	def cpu_turn(board)
  		input = rand(0..8)
  		@location = input.to_i
  		if valid_move?(@board, @location)
        move(@board, @location, @cpu_icon)
        @moves << @location
      else
        cpu_turn(@board)
      end
    end
    
    def turn_count(board)
  		counter = 0
  		board = @board
  		board.positions.each do |space|
	    	if space != " "
	      	counter += 1
	    	end 
	    end
	    counter
  	end

	def current_turn(board)
	  	if turn_count(@board) % 2 == 0
	    	player_turn(@board)
	  	else
	  		cpu_turn(@board)
	  	end
	end

end