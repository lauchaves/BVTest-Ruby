require_relative 'Player'

class Bot < Player
  def take_turn
    loop do

#
      #jalar la lista del player
#      @player_moves_temp = $players[0].moves

      #print @player_moves_temp
      #print $IA_Possible_winning_moves
      #print player_moves_temp
      #compararla con la suya y si si esta la vara quitar el par ordenado

#      $IA_Possible_winning_moves.each_with_index do |value, index|
#          $IA_Possible_winning_moves[index].each_with_index do |v, i|
#            print @player_moves_temp.include?(v)
#            $IA_Possible_winning_moves.delete_if(|v)
#            puts $IA_Possible_winning_moves
#          end

        #if $IA_Possible_winning_moves[index].all? { |move| @player_moves_temp.include?(move) }
        #  puts "hi"
        #  break
        #end
      #end

      move = $board.keys.sample.to_sym
      if $board[move] == " "
        @moves << move
        $board[move] = @symbol
        puts "\n #{@name} [#{@symbol}] has made a move at #{move.to_s}!"
        break
      end
    end
  end
end
