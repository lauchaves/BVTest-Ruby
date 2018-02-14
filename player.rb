require_relative 'display'

class Player
  attr_accessor :name, :symbol, :moves

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
    @moves = []
  end

  def take_turn
    print "\n #{@name} [#{@symbol}] to move: "
    loop do
      move = gets.chomp.upcase.to_sym
      if $board[move] == " "
        @moves << move
        $board[move] = @symbol
        break
      elsif $board[move] == nil
        Display.invalid_space
      elsif $board[move].scan(/\w/)
        Display.space_taken
      else
        Display.invalid_syntax
      end
    end
  end

end
