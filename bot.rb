require_relative 'Player'

class Bot < Player
  def take_turn
    print "\n #{@name} [#{@symbol}] moving "

    @player_moves_temp = $players[0].moves
    @IA_moves_temp = $players[1].moves
    @CORNERS = [:A1, :C1, :A3, :C3]

    case
      when winning_move() != nil
        input = winning_move
      when blocking_move != nil
        input = blocking_move
      when center()
        input = :B2
      when opposite_corner() != nil && taken(opposite_corner()) == false
        input = opposite_corner
      when corner()
        input = corner
      else
        until !taken(input)
          input = $board.keys.sample.to_sym
      end
    end
    @moves << input
    $board[input] = @symbol
  end

   def other
     symbol == "X" ? "O" : "X"
   end

   def winning_move
    winning_row =  $IA_Possible_winning_moves.find do |combo|
     ($board[combo[0]] == symbol && $board[combo[1]] == symbol && $board[combo[2]] == " ") ||
     ($board[combo[2]] == symbol && $board[combo[1]] == symbol && $board[combo[0]] == " ") ||
     ($board[combo[0]] == symbol && $board[combo[2]] == symbol && $board[combo[1]] == " ")
    end
    if winning_row != nil
     winning_cell = winning_row.find {|cell| $board[cell] == " "}
    end
  end

    def blocking_move
      winning_row =  $IA_Possible_winning_moves.find do |combo|
       ($board[combo[0]] == other && $board[combo[1]] == other && $board[combo[2]] == " ") ||
       ($board[combo[1]] == other && $board[combo[2]] == other && $board[combo[0]] == " ") ||
       ($board[combo[2]] == other && $board[combo[0]] == other && $board[combo[1]] == " ")
      end
      if winning_row != nil
       winning_cell = winning_row.find {|cell| $board[cell] == " "}
      end
    end

    def center
      $board[4] == " "
    end

    def corners
      @CORNERS.shuffle!
    end

    def corner
      corners().find {|corner| $board[corner] == " "}
    end

    def opposite_corner
      case
      when taken(:A1) && !taken(:C3)
         :C3
       when taken(:C3) && !taken(:A1)
         :A1
       when taken(:C1) && !taken(:A3)
         :A3
       when taken(:A3) && !taken(:C1)
         :C1
       else
         nil
      end
    end

    def position(input)
      $board[input]
    end

    def taken(input)
      position(input) == "X" || position(input) == "O"
    end

end
