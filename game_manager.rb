require_relative  'display'
require_relative  'player'
require_relative  'bot'

class GameManager

  def initialize
    $board = {A1: " ", A2: " ", A3: " ",  B1: " ",  B2: " ",  B3: " ",  C1: " ",  C2: " ",  C3: " "}
    @winning_moves = [[:A1, :A2, :A3], [:B1, :B2, :B3], [:C1, :C2, :C3],
                      [:A1, :B1, :C1], [:A2, :B2, :C2], [:A3, :B3, :C3],
                      [:A1, :B2, :C3], [:A3, :B2, :C1]]

    $IA_Possible_winning_moves = []
    $IA_Possible_winning_moves.replace(@winning_moves)
    $players = []
    @game_over = false
    @move_counter = 0

  end

  def check_for_winner(player)
    @winning_moves.each_with_index do |value, index|
      if @winning_moves[index].all? { |move| player.moves.include?(move) }
        Display.upwinname
        puts "\t    #{player.name}: "
        Display.downwinname
        Display.winner
        Display.thanks
        @game_over = true
        break
      elsif @move_counter == 9
          puts "\n"
          Display.draw
          Display.thanks
          @game_over = true
          break
        end
    end
  end

  def play
    Display.display_board
    @temp_p = $players.shuffle! #Randomize who gets the first
    until @game_over
      @temp_p.each do |player|
        player.take_turn
        @move_counter += 1
        Display.display_board
        check_for_winner(player)
        break if @game_over
      end
    end

    Display.play_again
    play_again()

  end

  def start
    Display.display_welcome
    Display.select_game_mode
    loop do
      mode = gets.chomp.to_i
      if mode == 1 || mode == 2
        Display.choose_piece
        choice = gets.chomp.upcase
        if choice == "O" || choice == "X"
          select_game_mode(mode, choice)
          break
        else
          Display.invalid_choice
        end
      else
        Display.invalid_game_mode
      end
    end
    Display.game_instructions
    Display.start_game
    play()
  end

  def select_game_mode(number_of_players, piece)
    add_player("Player 1", piece )
    add_bot("Bot", "X") if number_of_players == 1 && piece == "O"
    add_player("Player 2", "X") if number_of_players == 2 && piece == "O"
    add_bot("Bot", "O") if number_of_players == 1 && piece == "X"
    add_player("Player 2", "O") if number_of_players == 2 && piece == "X"
  end

  def add_player(name, symbol)
    player = Player.new(name, symbol)
    $players << player
    puts "#{name},#{symbol}"
    Display.player_is
  end

  def add_bot(name, symbol)
    bot = Bot.new(name, symbol)
    $players << bot
    puts "#{name}, #{symbol}"
    Display.bot_is
  end

  def play_again()
    answer = gets.chomp.upcase

    if answer == "Y"
      initialize()
      start()
    elsif answer == "N"
      Display.game_end
      sleep(2.5)
    else
      Display.invalid_choice
    end
  end

end
